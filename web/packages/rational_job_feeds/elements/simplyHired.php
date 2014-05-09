<? /* This is a view targeted at simplyHired.com */ ?>
<? echo "<"."?xml version=\"1.0\"  encoding=\"utf-8\"?".">\n"; ?>
<jobs>
	<?php foreach ($jobs AS $job) { ?>
	<job>
		<title><![CDATA[<?php echo $job->title;?>]]></title>
		<job-code><?php echo $job->id;?></job-code>
		<?php/*<job-board-name/>
		<job-board-url/>*/?>
		<detail-url><?php echo $job->link;?></detail-url>
		<?php/*<apply-url/>*/?>
		<?php if (!empty($job->category)) {?><job-category><?php echo htmlspecialchars($job->category) ?></job-category><?php } ?>
		

		<description>
			<summary><?php echo  ($jobFeed->getrichtext()) ? htmlspecialchars( $job->description ) : '<![cdata['.$job->description.']]>' ?> </summary> 
			<?php/*<required-skills/>
			<required-education/>
			<required-experience/>*/?>

			<?php/* below are all boolean */?>
			<?php/*<full-time/>
			<part-time/>
			<flex-time/>
			<internship/>
			<volunteer/>
			<exempt/>
			<contract/>
			<permanent/>
			<temporary/>
			<telecommute/>*/?>
		</description>

		<?php/*<compensation>
			<salary-range/>
			<salary-amount/>
			<salary-currency/>
			<benefits/>
		</compensation>

		<posted-date/>
		<close-date/>*/?>

		<?php if (is_object($job->address)) { ?>
		<location>
			<?php/*<address/>*/?>
			<?php if (!empty($job->address->city)) {?><city><?php echo htmlspecialchars($job->address->city) ?></city><?php } ?>
			<?php if (!empty($job->address->postal_code)) {?><zip><?php echo htmlspecialchars($job->address->postal_code) ?></zip><?php } ?>
			<?php if (!empty($job->address->state_province)) {?><state><?php echo htmlspecialchars($job->address->state_province) ?></state><?php } ?>
			<?php if (!empty($job->address->country)) {?><nation><?php echo htmlspecialchars($job->address->country) ?></nation><?php } ?>
		</location>
		<?php } ?>

		<?php/*<contact>
			<name/>
			<email/>
			<hiring-manager-name/>
			<hiring-manager-email/>
			<phone/>
			<fax/>
		</contact>*/?>

		<company>
			<name><?php echo htmlspecialchars($feed->company) ?></name>
			<?php/*<description/>
			<industry/>
			<url/>*/?>
		</company>
	</job>
	<?php } ?>
</jobs>