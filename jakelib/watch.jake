desc('Continously monitors the javascript and less files for the project, and rebuilds them as necessary - note: requires a fix to jake as here: https://github.com/mde/jake/pull/131');
task('watch', ['build'], function () {
	// Recursively watch files with a callback
	var fs = require('fs');
	var files = [];

	var findFilesAndWatch = function (path) {
		fs.stat(path, function (err, stats) {
			if (err) {
				return false;
			}
			if (stats.isFile()) {
				files.push(path);
				fs.watchFile(path, changeCallbackFactory(path));
			}
			else if (stats.isDirectory()) {
				fs.readdir(path, function (err, dirListing) {
					if (err) {
						return log.fatal(err);
					}
					for (var f in dirListing) {
						findFilesAndWatch(path + '/' + dirListing[f]);
					}
				});
			}
		});
	};

	var changeCallbackFactory = function (file) {
		return function (cur, prev) {
			if (cur.mtime > prev.mtime) {
				stopWatch();
				var fileTask = jake.Task[file];
				if (fileTask) {
					fileTask.modTime = cur.mtime;
				}
				try {
					jake.Task['build'].reenable(true);
					jake.Task['build'].invoke();
				} catch (e) {
					console.log('Error!');
					if (jake.opts.trace && e.stack) {
						console.error(e.stack);
					} else {
						console.error(e.message);
					}
				}
				startWatch();
			}
		};
	};

	var startWatch = function () {
		for (var i = 0; i < files.length; i++) {
			fs.watchFile(files[i], changeCallbackFactory(files[i]));
		}
	};
	var stopWatch = function () {
		for (var i = 0; i < files.length; i++) {
			fs.unwatchFile(files[i]);
		}
	};

	findFilesAndWatch('themes');
}, {async: true});