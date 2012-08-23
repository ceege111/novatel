desc('Build all the less/javascript files in the project');
task('build', ['build:theme'], function () {});

namespace('build', function () {
	desc('Build all the less/javascript files for the novatel theme');
	task('theme', ['build:theme:all'], function (){});

	namespace('theme', function () {
		var base = 'web/themes/novatel/';
		desc('Build all the less/javascript files for the novatel theme');
		task('all', ['build:theme:'+base+'js/main.min.js', 'build:theme:'+base+'css/styles.css', 'build:theme:'+base+'css/typography.css'], function (){});

		desc('Run the javascript for the novatel theme through the requirejs optimizer and minify the result');
		var jsFiles = new jake.FileList();
		jsFiles.include(base+'js/*.js');
		jsFiles.exclude(base+'js/main.min.js');
		file(base+'js/main.min.js', jsFiles.toArray(), function () {
			buildRequireJS({
				baseUrl: base+'js/',
				out: base+'js/main.min.js'
			});
		});

		desc('Create a directory for the css output by the less task');
		directory(base+'css');

		desc('Compile the styles.less file for the novatel theme to the css output directory');
		var lessFiles = new jake.FileList();
		lessFiles.include(base+'less/*.less');
		file(base+'css/styles.css', [base+'css'].concat(lessFiles.toArray()), function () {
			buildLessFile({
				baseUrl: base+'less/',
				source: base+'less/styles.less',
				out: base+'css/styles.css'
			});
		}, {async: true});
		desc('Compile the typography.less file for the editor for the novatel theme to the css output directory');
		file(base+'css/typography.css', [base+'css'].concat(lessFiles.toArray()), function () {
			buildLessFile({
				baseUrl: base+'less/',
				source: base+'less/typography.less',
				out: base+'css/typography.css'
			});
		}, {async: true});
	});

	var buildLessFile = function (options) {
		process.stdout.write('Compiling '+options.source+'... ');
		var less = require('less');
		var cleanCSS = require('clean-css');
		var fs = require('fs');
		var inputFile = options.source;
		var outputFile = options.out;
		var css, compiledCSS, finalCSS;
		
		var loadCSS = function () {
			fs.readFile(inputFile, 'utf8', compileCSS);
		};
		var compileCSS = function (err, data) {
			if (err) throw err;
			css = data;
			var parser = new(less.Parser)({
				paths: [options.baseUrl],
				filename: inputFile
			});
			parser.parse(css, function (err, tree) {
				if (err) throw err;
				compiledCSS = tree.toCSS();
				console.log("Done!");
				if (options.minify) {
					minifyCSS();
				} else {
					finalCSS = compiledCSS;
					outputCSS();
				}
			});
		};
		var minifyCSS = function () {
			process.stdout.write('Minimizing '+options.out+'... ');
			finalCSS = cleanCSS.process(compiledCSS);
			console.log("Done!");
			outputCSS();
		};
		var outputCSS = function () {
			fs.writeFile(outputFile, finalCSS, done);
		};
		var done = function () {
			complete();
		};

		loadCSS();
	};
	var buildRequireJS = function (options) {
		process.stdout.write('Creating optimized '+options.out+'... ');

		var requirejs = require('requirejs');
		var _ = require("underscore");
		var defaults = {
			baseUrl: 'js/',
			name: 'main',
			out: 'js/main.min.js',
			paths: {
				underscore: 'lib/underscore',
				backbone: 'lib/backbone',
				mustache: 'lib/mustache',
				videojs: 'lib/video',
				jquery: 'lib/require-jquery',
				'jquery.ui.core': 'lib/jquery.ui/jquery.ui.core',
				'jquery.ui.effects': 'lib/jquery.ui/jquery.effects.core',
				'jquery.ui.bounce': 'lib/jquery.ui/jquery.effects.bounce'
			},
			use: {
				"underscore": {
					attach: "_"
				},
				"mustache": {
					attach: "Mustache"
				},
				"backbone": {
					deps: ["use!underscore", "jquery"],
					attach: "Backbone"
				},
				"videojs": {
					attach: "_V_"
				},
				"jquery.ui.core": {},
				"jquery.ui.effects": {
					deps: [
						'use!jquery.ui.core'
					]
				},
				"jquery.ui.bounce": {
					deps: [
						'use!jquery.ui.effects'
					]
				}
			}
		};
		var config = _.extend({}, defaults, options);
		requirejs.optimize(config);

		console.log("Done!");
	};
});