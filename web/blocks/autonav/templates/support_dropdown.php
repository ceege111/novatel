<?
	defined('C5_EXECUTE') or die("Access Denied.");
	$aBlocks = $controller->generateNav();
	$c = Page::getCurrentPage();
	$containsPages = false;
	
	$nh = Loader::helper('navigation');
	$th = Loader::helper('text');
	$ih = Loader::helper('image'); //<--uncomment this line if displaying image attributes (see below)
	//Note that $nh (navigation helper) is already loaded for us by the controller (for legacy reasons)

	
	//this will create an array of parent cIDs 
	$inspectC=$c;
	$selectedPathCIDs=array( $inspectC->getCollectionID() );
	$parentCIDnotZero=true;	
	while($parentCIDnotZero){
		$cParentID=$inspectC->cParentID;
		if(!intval($cParentID)){
			$parentCIDnotZero=false;
		}else{
			$selectedPathCIDs[]=$cParentID;
			$inspectC=Page::getById($cParentID);
		}
	} 	
	
	// echo "\n<td>\n";

	//arrays for template output
	$pos = array( '','','' );
	$region_list = array();
	$country_list = array();
	$carrier_list = array();

	foreach($aBlocks as $ni) {
		$_c = $ni->getCollectionObject();
		if (!$_c->getCollectionAttributeValue('exclude_support')) {
			
			
			// $target = $ni->getTarget();
			// if ($target != '') {
			// 	$target = 'target="' . $target . '"';
			// }

			// if (!$containsPages) {
			// 	// this is the first time we've entered the loop so we print out the UL tag
			// 	echo("<ul class=\"nav\">");
			// }
			
			// $containsPages = true;
			
			$thisLevel = $ni->getLevel();

			//set the current hierarchy while we are traversing

			// $current_name = strtolower($ni->getName());
			// $current_name = str_replace(" ", "-", $current_name);

			$pos[$thisLevel] = $ni->getName();

			if($thisLevel == 0 && !$_c->getCollectionAttributeValue('exclude_support') ){
				$region_list[] = $ni->getName();
			}

			if($thisLevel == 1) {
				// $country_list[$pos[0]][] = $ni->getName();
				$url = ($_c->getCollectionAttributeValue('iframe_url') != '') ? $_c->getCollectionAttributeValue('iframe_url') : '';
				$description = $_c->getCollectionDescription();
				$img = $_c->getCollectionAttributeValue('product_image');
				$country_list[$pos[0]][] = array( 'name' => $ni->getName(), 'url'=>$url, 'description'=>$description,'img'=>$img);
			}

			// if($thisLevel == 2) {
			// 	$url = ($_c->getCollectionAttributeValue('iframe_url') != '') ? $_c->getCollectionAttributeValue('iframe_url') : '';
			// 	$description = $_c->getCollectionDescription();
			// 	$img = $_c->getCollectionAttributeValue('product_image');
			// 	$carrier_list[$pos[1]][] = array( 'name' => $ni->getName(), 'url'=>$url, 'description'=>$description, 'img'=>$img);
			// }

			// if ($thisLevel > $lastLevel) {
			// 	echo("<ul>");
			// } else if ($thisLevel < $lastLevel) {
			// 	for ($j = $thisLevel; $j < $lastLevel; $j++) {
			// 		if ($lastLevel - $j > 1) {
			// 			echo("</li></ul>");
			// 		} else {
			// 			echo("</li></ul></li>");
			// 		}
			// 	}
			// } else if ($i > 0) {
			// 	echo("</li>");
			// }

			// $pageLink = false;
			
			// if ($_c->getCollectionAttributeValue('replace_link_with_first_in_nav')) {
			// 	$subPage = $_c->getFirstChild();
			// 	if ($subPage instanceof Page) {
			// 		$pageLink = $nh->getLinkToCollection($subPage);
			// 	}
			// }
			
			// if (!$pageLink) {
			// 	$pageLink = $ni->getURL();
			// }

			// if ($c->getCollectionID() == $_c->getCollectionID()) { 
			// 	echo('<li class="nav-selected nav-path-selected"><a class="nav-selected nav-path-selected" ' . $target . ' href="' . $pageLink . '">' . $ni->getName() . '</a>');
			// } elseif ( in_array($_c->getCollectionID(),$selectedPathCIDs) && ($_c->getCollectionID() != HOME_CID) ) {
			// 	echo('<li class="nav-path-selected"><a class="nav-path-selected" href="' . $pageLink . '" ' . $target . '>' . $ni->getName() . '</a>');
			// } else {
			// 	echo('<li><a href="' . $pageLink . '" ' . $target . ' >' . $ni->getName() . '</a>');
			// }

			// echo( '<div class="target-level-'.$thisLevel.'">'.$ni->getName().'</div>' );
			// echo ("\n");

			$lastLevel = $thisLevel;
			$i++;
		}
	}

	// debug
	echo ("\n\n<pre style='display:none;'>");
	print_r($region_list);
	echo "\n----\n";
	print_r($country_list);
	echo "\n----\n";
	print_r($carrier_list);
	echo("</pre>\n\n");

	//output dropdown menus
	// echo("<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>");
	echo("<td style='min-height:200px;'><div style='margin-bottom: 10px' class='where-to-buy-header'><select class='region-menu'>\n");
	echo("<option value='-'>Select a Product:</option>\n");
	foreach ($region_list as $region) {
		echo("<option class='menu-region' value='".preg_replace('/[^a-zA-Z0-9_-]/', "-", strtolower($region))."'>");
		echo($region);
		echo("</option>\n");
	}
	echo ("</select>\n");

	// echo ("\n&nbsp;&nbsp;");
	// foreach ($country_list as $region => $countries) {
	// 	echo("<select style='display:none' class='country-menu menu-".preg_replace('/[^a-zA-Z0-9_-]/', "-", strtolower($region))."'>");
	// 	echo("<option value=-'-''>Select a Country:</option>\n");
	// 	foreach ($countries as $country) {
	// 		if (count($carrier_list[$country]) > 0) {
	// 			echo("<option value='".preg_replace('/[^a-zA-Z0-9_-]/', "-", strtolower($country))."'>");
	// 			echo($country);
	// 			echo("</option>\n");			
	// 		}
	// 	}
	// 	echo("</select>\n");
	// }
	echo ("</div>\n");

	echo ("<table class='table support-results'>\n");
		foreach ($country_list as $country => $carriers) {
			if (array_search($country, $region_list) === false){ //if category is not found in the dropdown list we skip rendering the contents
				continue;
			}
			echo("<tr style='display:none;' class='carrier-list support-header country-menu menu-".preg_replace('/[^a-zA-Z0-9_-]/', "-", strtolower($country))."'><th>Product Image</th><th>Product Name:</th><th>Support Links:</th></tr>\n");
			foreach ($carriers as $carrier) {
				echo("<tr style='display:none;' class='carrier-list country-menu menu-".preg_replace('/[^a-zA-Z0-9_-]/', "-", strtolower($country))."'>");
				echo("<td class='product-thumbnail'>");
				if($carrier['img']){
					$img = $carrier['img'];
					$fullPath = $img->getPath();
					$fullsize = $img->getRelativePath();
					$size = @getimagesize($fullPath);
					$thumb = $ih->getThumbnail($img, 200, 150, false);
					$thumbSrc = $thumb->src;
					$thumbWidth = $thumb->width;
					$thumbHeight = $thumb->height;
					echo("<img src=\"$thumbSrc\" width=\"$thumbWidth\" height=\"$thumbHeight\" alt=\"\" />");
				}
				echo("</td><td class='product-name'>");
				echo("<h5>");
				if ($carrier['url'] == ''){
					echo($carrier['name']);
				}else{
					echo("<a target='_blank' href='".$carrier['url']."'>");
					echo($carrier['name']);
					echo("</a>");
				}
				echo("</h5>");
				echo("</td><td class='product-description'>");
				if( $carrier['description'] != ''){
					// echo(str_replace("\n", "<br>", $carrier['description']));
					echo("<a href=''>Link to Carrier Support Page</a>");
				}
				echo("</td>");
				echo("</tr>");
			}
		}
	echo("</table>\n");

	echo("</td>\n");
			
	// echo "\n</td>\n";

		// $thisLevel = 0;
		// if ($containsPages) {
		// 	for ($i = $thisLevel; $i <= $lastLevel; $i++) {
		// 		echo("</li></ul>");
		// 	}
		// }
?>	