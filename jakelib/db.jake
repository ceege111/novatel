namespace('db', function () {
	desc('Exports the data for the current site so it can be stored in git');
	task('export', function () {
		// TODO: Load db info from config files
		process.stdout.write('Dumping mysql database... ');
		jake.exec(['mysqldump -u novatel -pH8y^j0Lnen novatel > db/concrete5.sql'], function () {
			console.log('Done!');
			complete();
		});
	}, {async: true});
	task('import', function () {
		// TODO: Load db info from config files
		process.stdout.write('Importing mysql database... ');
		jake.exec(['mysql -u novatel -pH8y^j0Lnen novatel < db/concrete5.sql'], function () {
			console.log('Done!');
			complete();
		});
	}, {async: true});
	// TODO: add support for multiple environments
	// TODO: add support for writing concrete5 config file from environment config
	// TODO: add a task to fix permissions
});
