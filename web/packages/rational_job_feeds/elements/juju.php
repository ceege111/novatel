<? /* This is a view targeted at job-search-engine.com */ ?>
<? echo "<"."?xml version=\"1.0\"  encoding=\"utf-8\"?".">\n"; ?>
<positionfeed
	xmlns="http://www.job-search-engine.com/add-jobs/positionfeed-namespace/"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.job-search-engine.com/add-jobs/positionfeed-namespace/ http://www.job-search-engine.com/add-jobs/positionfeed.xsd"
	version="2006-04">
	<source><?php echo htmlspecialchars($feed->name) ?></source>

	<sourceurl><?php echo $feed->channelLink ?></sourceurl>
	<feeddate><?php echo date("D, d M Y H:i:s T") ?></feeddate>

	<?php foreach ($jobs AS $job) { ?>
		<job id="<?php echo $job->id ?>">
			<employer><?php echo htmlspecialchars($feed->company) ?></employer>

			<title><?php echo htmlspecialchars($job->title) ?></title>
			<description><?php echo  ($jobFeed->getrichtext()) ? htmlspecialchars( $job->description ) : '<![cdata['.$job->description.']]>' ?></description>
			<postingdate><?php echo date( 'd, d m y h:i:s t', $job->date) ?></postingdate>
			<joburl><?php echo $job->link ?></joburl>

			<?php if (is_object($job->address)) { ?>
			<location>
				<?php/*<county>(County)</county>*/?>
				<?php if (!empty($job->address->city)) {?><city><?php echo htmlspecialchars($job->address->city) ?></city><?php } ?>
				<?php if (!empty($job->address->postal_code)) {?><zip><?php echo htmlspecialchars($job->address->postal_code) ?></zip><?php } ?>
				<?php if (!empty($job->address->state_province)) {?><state><?php echo htmlspecialchars($job->address->state_province) ?></state><?php } ?>
				<?php if (!empty($job->address->country)) {?><nation><?php echo htmlspecialchars($job->address->country) ?></nation><?php } ?>
			</location>
			<?php } ?>

			<?php/*<salary>
				<period>(yearly, monthly, weekly, daily, or hourly)</period>

				<min>(dollar number)</min>
				<max>(dollar number)</max>
			</salary>
			<type>(fulltime, parttime, temporary, contract, internship, seasonal, volunteer)</type>

			<experience>
				<min>(years)</min>
				<max>(years)</max>
			</experience>
			<education>(somehighschool, highschool, somecollege, associates,
			    bachelors, masters, doctorate, postdoctorate, professional)</education>

			<jobsource>(Source of job. Defaults to the feed's <source> tag.)</jobsource>
			<jobsourceurl>(URL to any additional information about job's source.)</jobsourceurl>*/?>
		</job>
	<?php } ?>

</positionfeed>