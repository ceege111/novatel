<? /* This is the default view, plain 'ol rss */ ?>
<? echo "<"."?xml version=\"1.0\"?".">\n"; ?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
	<channel>
		<title><?php echo htmlspecialchars($feed->name) ?></title>
		<link><?php echo $feed->channelLink ?></link> 
		<description><![CDATA[ <?php echo $feed->description ?> ]]></description>
		<lastBuildDate><?php echo  date("D, d M Y H:i:s T") ?></lastBuildDate>
		<atom:link href="<?php echo $feed->link ?>" rel="self" type="application/rss+xml" />
		
		<?php foreach ($jobs AS $job) { ?>
			<item>
				<title><?php echo htmlspecialchars($job->title);?></title>
				<link><?php echo $job->link ?></link>
				<description><?php echo  ($jobFeed->getrichtext()) ? htmlspecialchars( $job->description ) : '<![cdata['.$job->description.']]>' ?> </description>  
				<pubdate><?php echo date( 'd, d m y h:i:s t', $job->date) ?></pubdate>
				<guid ispermalink="true"><?php echo $job->link ?></guid>
			</item>
		<?php } ?>
	</channel>
</rss>  