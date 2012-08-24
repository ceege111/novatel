desc('Sets the correct permissions to files that need to be writable so that things work as expected');
task('permissions', function () {
	process.stdout.write('Setting file permissions... ');
	var done = function () {
		console.log('Done!');
		complete();
	};
	var cmds = [
		'chmod -R a=Xrw web/files/ web/packages/ web/updates/ web/config/ web/sitemap.xml'
	];
	var ex = jake.createExec(cmds);
	ex.addListener('error', done);
	ex.addListener('cmdEnd', done);
	ex.run();
}, {async: true});