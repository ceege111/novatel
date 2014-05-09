<? /* This is a view targeted at indeed.com */ ?>
<? echo "<"."?xml version=\"1.0\"  encoding=\"utf-8\"?".">\n"; ?>
<source>
	<publisher><?php echo htmlspecialchars($feed->name) ?></publisher>
	<publisherurl><?php echo $feed->channelLink ?></publisherurl>
	<lastBuildDate><?php echo date("D, d M Y H:i:s T") ?></lastBuildDate>
	<?php foreach ($jobs AS $job) { ?>
		<job>
			<title><![CDATA[<?php echo $job->title;?>]]></title>
			<date><![CDATA[<?php echo date( 'd, d m y h:i:s t', $job->date) ?>]]></date>
			<referencenumber><![CDATA[<?php echo $job->id;?>]]></referencenumber>
			<url><![CDATA[<?php echo $job->link;?>]]></url>
			<company><![CDATA[<?php echo $feed->company ?>]]></company>
			<?php if (is_object($job->address)) { ?>
			<?php if (!empty($job->address->city)) {?><city><![CDATA[<?php echo $job->address->city ?>]]></city><?php } ?>
			<?php if (!empty($job->address->postal_code)) {?><postalcode><![CDATA[<?php echo $job->address->postal_code ?>]]></postalcode><?php } ?>
			<?php if (!empty($job->address->state_province)) {?><state><![CDATA[<?php echo $job->address->state_province ?>]]></state><?php } ?>
			<?php if (!empty($job->address->country)) {?><country><![CDATA[<?php echo $job->address->country ?>]]></country><?php } ?>
			<?php } ?>
			<description><![CDATA[<?php echo $job->plainDescription;?>]]></description>
			<?php/*<salary><![CDATA[$50K per year]]></salary>
			<education><![CDATA[Bachelors]]></education>
			<jobtype><![CDATA[fulltime, parttime]]></jobtype>*/?>
			<?php if (!empty($job->category)) {?><category><![CDATA[<?php echo $job->category ?>]]></category><?php } ?>
			<?php/*<experience><![CDATA[5+ years]]></experience>*/?>
		</job>
	<?php } ?>
</source>