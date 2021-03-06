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

	$colSkip = false;
	echo("<ul class=\"nav\">");
	foreach($aBlocks as $ni) {
		$_c = $ni->getCollectionObject();
		if (!$_c->getCollectionAttributeValue('exclude_nav')) {
			
			
			$target = $ni->getTarget();
			if ($target != '') {
				$target = 'target="' . $target . '"';
			}
			if (!$containsPages) {
				// this is the first time we've entered the loop so we print out the UL tag
				echo("<ul class=\"footer-column\">");
			}
			
			$containsPages = true;
			
			$thisLevel = $ni->getLevel();
			if ($thisLevel > $lastLevel) {
				echo("<ul class='level-".$thisLevel."'>");
			} else if ($thisLevel < $lastLevel) {
				for ($j = $thisLevel; $j < $lastLevel; $j++) {
					if ($lastLevel - $j > 1) {
						echo("</li></ul>");
					} else {
						if ($thisLevel == 0){
							if($colSkip){
								echo("</li></ul></li>");
								$colSkip = false;
							} else {
								echo("</li></ul></li></ul><ul class=\"footer-column\">");
								$colSkip = true;
							}
						} else {
							echo("</li></ul></li>");
						}
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
				if ($_c->getCollectionAttributeValue('not_menu_link')){
					if( $_c->getCollectionAttributeValue('iframe_url') != '' ){
						echo('<li class="nav-selected nav-path-selected"><span class="nav-static">' . $ni->getName() . '</span>');
					} else {
						echo('<li class="nav-selected nav-path-selected"><a class="dropdown-toggle nav-selected nav-path-selected" ' . $_c->getCollectionAttributeValue('iframe_url') . ' href="' . $target . '">' . $ni->getName() . '</a>');
					}				} else {
					echo('<li class="level-'.$thisLevel.' nav-selected nav-path-selected"><a class="nav-selected nav-path-selected" ' . $target . ' href="' . $pageLink . '">' . $ni->getName() . '</a>');
				}
			} elseif ( in_array($_c->getCollectionID(),$selectedPathCIDs) && ($_c->getCollectionID() != HOME_CID) ) {
				if ($_c->getCollectionAttributeValue('not_menu_link')){
					if($_c->getCollectionAttributeValue('iframe_url') != ''){
						echo('<li class="nav-path-selected"><a class="dropdown-toggle nav-path-selected" href="' . $_c->getCollectionAttributeValue('iframe_url') . '" ' . $target . '>' . $ni->getName() . '</a>');
					}else {
						echo('<li class="nav-path-selected"><span class="nav-static">' . $ni->getName() . '</span>');
					}	
				} else {
					echo('<li class="level-'.$thisLevel.' nav-path-selected"><a class="nav-path-selected" href="' . $pageLink . '" ' . $target . '>' . $ni->getName() . '</a>');
				}
			} else {
				if ($_c->getCollectionAttributeValue('not_menu_link')){
					if ($_c->getCollectionAttributeValue('iframe_url') != ''){
						echo('<li><a class="dropdown-toggle" href="' . $_c->getCollectionAttributeValue('iframe_url') . '" ' . $target . ' >' . $ni->getName() . '</a>');
					} else {
						echo('<li><span class="nav-static">' . $ni->getName() . '</span>');
					}
				} else {
					echo('<li class="level-'.$thisLevel.'"><a href="' . $pageLink . '" ' . $target . ' >' . $ni->getName() . '</a>');
				}
			}	

			$lastLevel = $thisLevel;
			$i++;
			
			
		}
	}
	
	$thisLevel = 0;
	if ($containsPages) {
		for ($i = $thisLevel; $i <= $lastLevel; $i++) {
			if ($i == $lastLevel){
				echo("<img class='iso-logo' src='/themes/novatel/img/icons/iso-logo.png' alt=''>");
			}
			echo("</li></ul>");
		}
	}

?>