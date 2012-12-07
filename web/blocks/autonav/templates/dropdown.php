<?
	/**
	* Header Dropdown Menu
	*/

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
	
	foreach($aBlocks as $ni) {
		$_c = $ni->getCollectionObject();
		if (!($_c->getCollectionAttributeValue('exclude_nav') || $_c->getCollectionAttributeValue('exclude_dropdown_nav'))) {
			$target = $ni->getTarget();
			if ($target != '') {
				$target = 'target="' . $target . '"';
			}
			if (!$containsPages) {
				// this is the first time we've entered the loop so we print out the UL tag
				echo("<ul class=\"dropdown nav\">");
			}
			
			$containsPages = true;
			
			$thisLevel = $ni->getLevel();
			if ($thisLevel > $lastLevel) {
				echo("<ul class=\"dropdown-menu\" role=\"menu\">");
			} else if ($thisLevel < $lastLevel) {
				for ($j = $thisLevel; $j < $lastLevel; $j++) {
					if ($lastLevel - $j > 1) {
						echo("</li></ul>");
					} else {
						echo("</li></ul></li>");
					}
				}
			} else if ($i > 0) {
				echo("</li>");
			}

			$pageLink = false;
			
			if ($_c->getCollectionAttributeValue('replace_link_with_first_in_nav')) {
				$subPage = $_c->getFirstChild();
				if ($subPage instanceof Page) {
					$pageLink = $nh->getLinkToCollection($subPage);
				}
			}
			
			if (!$pageLink) {
				$pageLink = $ni->getURL();
			}

			if ($c->getCollectionID() == $_c->getCollectionID()) { 
				if($_c->getCollectionAttributeValue('not_menu_link')){
					echo('<li class="nav-selected nav-path-selected">' . $ni->getName() );
				} else {
					echo('<li class="nav-selected nav-path-selected"><a class="dropdown-toggle nav-selected nav-path-selected" ' . $target . ' href="' . $pageLink . '">' . $ni->getName() . '</a>');
				}
			} elseif ( in_array($_c->getCollectionID(),$selectedPathCIDs) && ($_c->getCollectionID() != HOME_CID) ) {
				if ($_c->getCollectionAttributeValue('not_menu_link')){
					echo('<li class="nav-path-selected">' . $ni->getName() );
				} else {
					echo('<li class="nav-path-selected"><a class="dropdown-toggle nav-path-selected" href="' . $pageLink . '" ' . $target . '>' . $ni->getName() . '</a>');
				}
			} else {
				if ($_c->getCollectionAttributeValue('not_menu_link')){
					echo('<li>' . $ni->getName() );

				} else {
					echo('<li><a class="dropdown-toggle" href="' . $pageLink . '" ' . $target . ' >' . $ni->getName() . '</a>');
				}
			}	
			$lastLevel = $thisLevel;
			$i++;
			
			
		}
	}
	
	$thisLevel = 0;
	if ($containsPages) {
		for ($i = $thisLevel; $i <= $lastLevel; $i++) {
			echo("</li></ul>");
		}
	}

?>