<? /* This is a view targeted at job-search-engine.com */ ?>
<? echo "<"."?xml version=\"1.0\"  encoding=\"utf-8\"?".">\n"; ?>
<listings>
	<?php foreach ($jobs AS $job) { ?>
	<listing>
		<?php if (!empty($job->category)) {?><category><?php echo htmlspecialchars($job->category) ?></category><?php } ?>
		<id><?php echo $job->id ?></id>
		<title><?php echo htmlspecialchars($job->title) ?></title>
		<description><?php echo  ($jobFeed->getrichtext()) ? htmlspecialchars( $job->description ) : '<![cdata['.$job->description.']]>' ?></description>
		<create_time><?php echo date( 'd, d m y h:i:s t', $job->date) ?></create_time>
		<url><?php echo $job->link ?></url>
		<?php if (is_object($job->address)) { ?>
		<?php if (!empty($job->address->city)) {?><city><?php echo htmlspecialchars($job->address->city) ?></city><?php } ?>
		<?php if (!empty($job->address->postal_code)) {?><zip_code><?php echo htmlspecialchars($job->address->postal_code) ?></zip_code><?php } ?>
		<?php if (!empty($job->address->state_province)) {?><state><?php echo htmlspecialchars($job->address->state_province) ?></state><?php } ?>
		<?php if (!empty($job->address->country)) {?><country><?php echo htmlspecialchars($job->address->country) ?></country><?php } ?>
		<?php } ?>
		<?php/*<address>3459 Oak Street</address>
		<neighborhood>Willow Park</neighborhood>
		<benefits>401K, child care</benefits>*/?>
		<company><?php echo htmlspecialchars($feed->company) ?></company>
		<?php/*<company_size>12,000</company_size>
		<currency>USD</currency>
		<employee_type>Full Time Permanent</employee_type>
		<expire_time>2004-09-16T14:00:00-07:00</expire_time>
		<fee>yes</fee>
		<hourly_rate>12.50</hourly_rate>
		<industry>technology</industry>
		<ip_address>142.72.8.120</ip_address>
		<registration>yes</registration>
		<required_education>2 year degree</required_education>
		<required_experience>4 years</required_experience>
		<salary>83000</salary>
		<salary_type>hourly</salary_type>
		<seller_email>joe@smith.com</seller_email>
		<seller_name>Joe Smith</seller_name>
		<seller_phone>123-456-7890</seller_phone>
		<seller_url>http://smith-classifieds.com/</seller_url>*/?>
	</listing>
	<?php } ?>
</listings>