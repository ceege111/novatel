<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
		<?php //Product Details Tabs: When in edit mode we display these as a table, in normal viewing mode we display them as tabs
			if ($c->isEditMode()): //edit mode rendering ?>

			<div class="row edit-info">
				<div class="span8">
					<?php 
						$ap = new Area('Product More Info');
						$ap->display($c);
					?>	
				</div>
			</div>

			<div class="row edit-tabs">

				<div class="span8 tab-title">
					<?php 
						$tab_title_01 = new Area('Product Tab Title 01');
						$tab_title_01->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_01 = new Area('Product Tab 01');
						$tab_01->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_02 = new Area('Product Tab Title 02');
						$tab_title_02->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_02 = new Area('Product Tab 02');
						$tab_02->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_03 = new Area('Product Tab Title 03');
						$tab_title_03->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_03 = new Area('Product Tab 03');
						$tab_03->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_04 = new Area('Product Tab Title 04');
						$tab_title_04->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_04 = new Area('Product Tab 04');
						$tab_04->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_05 = new Area('Product Tab Title 05');
						$tab_title_05->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_05 = new Area('Product Tab 05');
						$tab_05->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_06 = new Area('Product Tab Title 06');
						$tab_title_06->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_06 = new Area('Product Tab 06');
						$tab_06->display($c);
					?>
				</div>

			</div>
		<?php else:  //normal template rendering?>

			<div class="row">
				<?php 
					$ap = new Area('Product More Info');
					$ap->display($c);
				?>	
			</div>
			<hr>
			<ul id="productTabs" class="tab-titles">
				<?php $tab_title_01 = new Area('Product Tab Title 01'); if($tab_title_01->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title active'><a data-toggle='tab' href='#tabOne'>";   $tab_title_01->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_02 = new Area('Product Tab Title 02'); if($tab_title_02->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabTwo'>";   $tab_title_02->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_03 = new Area('Product Tab Title 03'); if($tab_title_03->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabThree'>"; $tab_title_03->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_04 = new Area('Product Tab Title 04'); if($tab_title_04->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabFour'>";  $tab_title_04->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_05 = new Area('Product Tab Title 05'); if($tab_title_05->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabFive'>";  $tab_title_05->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_06 = new Area('Product Tab Title 06'); if($tab_title_06->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabSix'>";   $tab_title_06->display($c); echo "</a></li>\n"; } ?>
			</ul>
			<div id="productTabsContenl" class="tab-content tabs">
				<?php $tab_01 = new Area('Product Tab 01'); if($tab_01->getTotalBlocksInArea($c) > 0){ echo "<div id='tabOne'   class='tab-pane tab active'>"; $tab_01->display($c); echo "</div>\n"; } ?>
				<?php $tab_02 = new Area('Product Tab 02'); if($tab_02->getTotalBlocksInArea($c) > 0){ echo "<div id='tabTwo'   class='tab-pane tab       '>"; $tab_02->display($c); echo "</div>\n"; } ?>
				<?php $tab_03 = new Area('Product Tab 03'); if($tab_03->getTotalBlocksInArea($c) > 0){ echo "<div id='tabThree' class='tab-pane tab       '>"; $tab_03->display($c); echo "</div>\n"; } ?>
				<?php $tab_04 = new Area('Product Tab 04'); if($tab_04->getTotalBlocksInArea($c) > 0){ echo "<div id='tabFour'  class='tab-pane tab       '>"; $tab_04->display($c); echo "</div>\n"; } ?>
				<?php $tab_05 = new Area('Product Tab 05'); if($tab_05->getTotalBlocksInArea($c) > 0){ echo "<div id='tabFive'  class='tab-pane tab       '>"; $tab_05->display($c); echo "</div>\n"; } ?>
				<?php $tab_06 = new Area('Product Tab 06'); if($tab_06->getTotalBlocksInArea($c) > 0){ echo "<div id='tabSix'   class='tab-pane tab       '>"; $tab_06->display($c); echo "</div>\n"; } ?>
			</div>		
		<?php endif; ?>