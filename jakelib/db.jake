namespace('db', function () {
	desc('Exports the data for the current site so it can be stored in git');
	task('export', function () {
		// TODO: Load db info from config files
		process.stdout.write('Dumping mysql database... ');
		jake.exec(['mysqldump -u deploy -poPNNT4deUr novatel_prod -h ec2-54-86-109-233.compute-1.amazonaws.com > db/concrete5.sql'], function () {
			console.log('Done!');
			complete();
		});
	}, {async: true});
	task('import', function () {
		// TODO: Load db info from config files
		process.stdout.write('Importing mysql database... ');
		jake.exec(['mysql -u deploy -poPNNT4deUr novatel_prod -h ec2-54-86-109-233.compute-1.amazonaws.com < db/concrete5.sql'], function () {
			console.log('Done!');
			complete();
		});
	}, {async: true});
	// TODO: add support for multiple environments
	// TODO: add support for writing concrete5 config file from environment config
	// TODO: add a task to fix permissions
});
