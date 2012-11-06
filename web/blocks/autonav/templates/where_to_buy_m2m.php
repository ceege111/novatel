<?
	defined('C5_EXECUTE') or die("Access Denied.");
	$aBlocks = $controller->generateNav();
	$c = Page::getCurrentPage();
	$containsPages = false;
	
	$nh = Loader::helper('navigation');
	
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
		if (!$_c->getCollectionAttributeValue('exclude_nav')) {
			
			
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

			if($thisLevel == 0){
				$region_list[] = $ni->getName();
			}

			if($thisLevel == 1) {
				// $country_list[$pos[0]][] = $ni->getName();
				$url = ($_c->getCollectionAttributeValue('iframe_url') != '') ? $_c->getCollectionAttributeValue('iframe_url') : '';
				$description = $_c->getCollectionDescription();
				$country_list[$pos[1]][] = array( 'name' => $ni->getName(), 'url'=>$url, 'description'=>$description);
			}

			if($thisLevel == 2) {
				$url = ($_c->getCollectionAttributeValue('iframe_url') != '') ? $_c->getCollectionAttributeValue('iframe_url') : '';
				$description = $_c->getCollectionDescription();
				$carrier_list[$pos[1]][] = array( 'name' => $ni->getName(), 'url'=>$url, 'description'=>$description);
			}

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

	// // debug
	// echo ("<pre>");
	// print_r($region_list);
	// echo "\n----\n";
	// print_r($country_list);
	// echo "\n----\n";
	// print_r($carrier_list);

	//output dropdown menus
	// echo("<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>");
	echo("<td style='min-height:200px;'><div><select class='region-menu'>\n");
	echo("<option value='-'>Select a Region:</option>\n");
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

	echo ("<div>\n");

		foreach ($country_list as $country => $carriers) {
			echo("<div style='display:none;' class='carrier-list country-menu menu-".preg_replace('/[^a-zA-Z0-9_-]/', "-", strtolower($region))."''>");
			foreach ($carriers as $carrier) {
				echo("<div class='carrier-item'>");
				if ($carrier['url'] == ''){
					echo($carrier['name']);
				}else{
					echo("<a target='_blank' href='".$carrier['url']."'>");
					echo($carrier['name']);
					echo("</a>");
				}
				if( $carrier['description'] != ''){
					echo("\n<div class='carrier-sub'>");
					echo(str_replace("\n", "<br>", $carrier['description']));
					echo("</div>\n");
				}
				echo("</div>\n");
			}
			echo("</div>");
		}

	echo ("</td>\n");
			
	// echo "\n</td>\n";

		// $thisLevel = 0;
		// if ($containsPages) {
		// 	for ($i = $thisLevel; $i <= $lastLevel; $i++) {
		// 		echo("</li></ul>");
		// 	}
		// }
?>