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
	$category_list = array();
	$product_list = array();

	foreach($aBlocks as $ni) {
		$_c = $ni->getCollectionObject();
		if (!$_c->getCollectionAttributeValue('exclude_nav')) {

			$thisLevel = $ni->getLevel();
			$pos[$thisLevel] = $ni->getName();

			if($thisLevel == 1 && !$_c->getCollectionAttributeValue('exclude_support') ){
				$category_list[] = $ni->getName();
			}

			if($thisLevel == 2) {
				// $product_list[$pos[0]][] = $ni->getName();
				$pageLink = $ni->getURL();
				$url = ($_c->getCollectionAttributeValue('iframe_url') != '') ? $_c->getCollectionAttributeValue('iframe_url') : '';
				$description = $_c->getCollectionDescription();
				$img = $_c->getCollectionAttributeValue('product_image');
				$support = $_c->getCollectionAttributeValue('press_materials');
				$product_list[$pos[1]][] = array( 'name' => $ni->getName(), 'url'=>$pageLink, 'description'=>$description,'img'=>$img, 'support'=>$support);
			}
			$lastLevel = $thisLevel;
			$i++;
		}
	}

	foreach ($product_list as $category => $product) {
		if (array_search($category, $category_list) === false) {
			continue;
		}
		echo("<table style='display:none;' class='table table-striped support-results menu-".preg_replace('/[^a-zA-Z0-9_-]/', "-", strtolower($category))."'>\n");
		echo("<tr><th>".$category."</th><th>Name:</th><th>Downloads:</th></tr>\n");
		foreach ($product as $product_row) {
			echo("<tr>");
				echo("<td class='product-thumbnail'>");
				if($product_row['img']){
					$img = $product_row['img'];
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
				if ($product_row['url'] == ''){
					echo($product_row['name']);
				}else{
					echo("<a href='".$product_row['url']."'>");
					echo($product_row['name']);
					echo("</a>");
				}
				echo("</h5>");
				echo("</td><td class='product-support'>");
				if( $product_row['support'] != ''){
					// echo(str_replace("\n", "<br>", $product_row['description']));
					echo($product_row['support']);
				}
				echo("</td>");
			echo("</tr>");
		}
		echo("</table>\n");
	}

	// // debug
	// echo ("\n\n<pre>");
	// print_r($category_list);
	// echo "\n----\n";
	// print_r($product_list);
	// echo "\n----\n</pre>";
?>