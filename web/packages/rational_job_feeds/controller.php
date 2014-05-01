<?php 

defined('C5_EXECUTE') or die(_("Access Denied.")); 

class RationalJobFeedsPackage extends Package {

	protected $pkgHandle = 'rational_job_feeds';
	protected $appVersionRequired = '5.6.1';
	protected $pkgVersion = '0.1';
	
	public function getPackageDescription() { 
		return t("Provide feeds for jobs on your site that can be read by job search engines");
	}
	
	public function getPackageName() {
		return t("Rational Job Feeds"); 
	}
	 
	public function install() {
		$pkg = parent::install(); 
		
		//install dashboard page
		Loader::model('single_page');
		$adminPage=Page::getByPath('/dashboard/rational_job_feeds');
		if( !intval($adminPage->cID) ){  
			$adminPage=SinglePage::add('/dashboard/rational_job_feeds', $pkg);
		}
		$adminPage->update(array(
			'cName'=>$this->getPackageName(),
			'cDescription'=>$this->getPackageDescription()
		));		
		
		
		// install page type 
		Loader::model('collection_types'); 
		$feedPageType = CollectionType::getByHandle('rational_job_feed'); 
		if( !$feedPageType ){ 
			$data['ctHandle'] = 'rational_job_feed'; 
			$data['ctName'] = t('Rational Job Feed'); 
			$feedPageType = CollectionType::add($data, $pkg); 	 	
		}

		// install attribute set
		$akcc = AttributeKeyCategory::getByHandle('collection');
		if (is_object($akcc)) {
			// create attribute set
			if (!is_object(AttributeSet::getByHandle('rational_job_feeds'))) {
				$as = $akcc->addSet('rational_job_feeds', t('Rational Job Feeds'), 'rational_job_feeds');

				// create attribute keys
				$ak = CollectionAttributeKey::add('select',  array(
					'akHandle' => 'rational_job_feeds_category',
					'akName' => 'Category',
					'akIsSearchableIndexed' => false,
					'akIsSearchable' => false
				));
				SelectAttributeTypeOption::add($ak, 'Administrative, Clerical & Support Services Jobs');
				SelectAttributeTypeOption::add($ak, 'Advertising, Marketing & Public Relations Jobs');
				SelectAttributeTypeOption::add($ak, 'Architecture & Design Jobs');
				SelectAttributeTypeOption::add($ak, 'Art Jobs');
				SelectAttributeTypeOption::add($ak, 'Other Art & Media Jobs');
				SelectAttributeTypeOption::add($ak, 'Visual Art Jobs');
				SelectAttributeTypeOption::add($ak, 'Automotive Jobs');
				SelectAttributeTypeOption::add($ak, 'Banking Jobs');
				SelectAttributeTypeOption::add($ak, 'Science, Pharmaceutical & Biotech Jobs');
				SelectAttributeTypeOption::add($ak, 'Business Opportunities');
				SelectAttributeTypeOption::add($ak, 'Government Jobs');
				SelectAttributeTypeOption::add($ak, 'Computer & Software Jobs');
				SelectAttributeTypeOption::add($ak, 'Construction & Skilled Labor Jobs');
				SelectAttributeTypeOption::add($ak, 'Consulting Jobs');
				SelectAttributeTypeOption::add($ak, 'Customer Service & Call Center Jobs');
				SelectAttributeTypeOption::add($ak, 'Distribution Jobs');
				SelectAttributeTypeOption::add($ak, 'Domestic Help, Child & Adult Care Jobs');
				SelectAttributeTypeOption::add($ak, 'Teaching, Training & Library Jobs');
				SelectAttributeTypeOption::add($ak, 'Oil, Gas & Solar Power Jobs');
				SelectAttributeTypeOption::add($ak, 'Engineering & Product Development Jobs');
				SelectAttributeTypeOption::add($ak, 'TV, Film & Musician Jobs');
				SelectAttributeTypeOption::add($ak, 'Acting Jobs');
				SelectAttributeTypeOption::add($ak, 'Adult Acting Jobs');
				SelectAttributeTypeOption::add($ak, 'Dancing Jobs');
				SelectAttributeTypeOption::add($ak, 'Adult Dancing Jobs');
				SelectAttributeTypeOption::add($ak, 'Modeling Jobs');
				SelectAttributeTypeOption::add($ak, 'Adult Modeling Jobs');
				SelectAttributeTypeOption::add($ak, 'Music Jobs');
				SelectAttributeTypeOption::add($ak, 'Post-Production Jobs');
				SelectAttributeTypeOption::add($ak, 'Production Jobs');
				SelectAttributeTypeOption::add($ak, 'Facilities & Maintenance Jobs');
				SelectAttributeTypeOption::add($ak, 'Accounting & Finance Jobs');
				SelectAttributeTypeOption::add($ak, 'Recreation & Fitness Jobs');
				SelectAttributeTypeOption::add($ak, 'Franchise Jobs');
				SelectAttributeTypeOption::add($ak, 'General Business Jobs');
				SelectAttributeTypeOption::add($ak, 'General Labor Jobs');
				SelectAttributeTypeOption::add($ak, 'Grocery Jobs');
				SelectAttributeTypeOption::add($ak, 'Healthcare & Nurse Jobs');
				SelectAttributeTypeOption::add($ak, 'Hospitality, Tourism & Travel Jobs');
				SelectAttributeTypeOption::add($ak, 'Human Resources & Recruiting Jobs');
				SelectAttributeTypeOption::add($ak, 'Insurance Jobs');
				SelectAttributeTypeOption::add($ak, 'Inventory Jobs');
				SelectAttributeTypeOption::add($ak, 'Law Enforcement & Security Jobs');
				SelectAttributeTypeOption::add($ak, 'Legal Jobs');
				SelectAttributeTypeOption::add($ak, 'Transportation, Travel & Logistics Jobs');
				SelectAttributeTypeOption::add($ak, 'Management & Executive Jobs');
				SelectAttributeTypeOption::add($ak, 'Military Jobs');
				SelectAttributeTypeOption::add($ak, 'Non-Profit & Fundraising Jobs');
				SelectAttributeTypeOption::add($ak, 'Other Jobs');
				SelectAttributeTypeOption::add($ak, 'Paralegal Jobs');
				SelectAttributeTypeOption::add($ak, 'Production & Operations Jobs');
				SelectAttributeTypeOption::add($ak, 'Professional Services Jobs');
				SelectAttributeTypeOption::add($ak, 'Quality Assurance & Control Jobs');
				SelectAttributeTypeOption::add($ak, 'Research & Development Jobs');
				SelectAttributeTypeOption::add($ak, 'Real Estate Jobs');
				SelectAttributeTypeOption::add($ak, 'Installation, Maintenance & Repair Jobs');
				SelectAttributeTypeOption::add($ak, 'Restaurant & Food Service Jobs');
				SelectAttributeTypeOption::add($ak, 'Retail, Grocery & Wholesale Jobs');
				SelectAttributeTypeOption::add($ak, 'Sales & Business Development Jobs');
				SelectAttributeTypeOption::add($ak, 'Salon & Spa Jobs');
				SelectAttributeTypeOption::add($ak, 'Science Jobs');
				SelectAttributeTypeOption::add($ak, 'Social Services & Counseling Jobs');
				SelectAttributeTypeOption::add($ak, 'Strategy & Planning Jobs');
				SelectAttributeTypeOption::add($ak, 'Information Technology Jobs');
				SelectAttributeTypeOption::add($ak, 'Telecommunications Jobs');
				SelectAttributeTypeOption::add($ak, 'Training & Instructor Jobs');
				SelectAttributeTypeOption::add($ak, 'Veterinary & Other Animal Care Jobs');
				SelectAttributeTypeOption::add($ak, 'Warehouse Jobs');
				SelectAttributeTypeOption::add($ak, 'Work from Home & Self Employed Jobs');
				SelectAttributeTypeOption::add($ak, 'Media, Journalism & Newspaper Jobs');
				$ak->setAttributeSet($as);

				$ak = CollectionAttributeKey::add('address',  array(
					'akHandle' => 'rational_job_feeds_address',
					'akName' => 'Address',
					'akIsSearchableIndexed' => false,
					'akIsSearchable' => false
				));
				$ak->setAttributeSet($as);
			}
		}
		
		// update package id
		//if reinstalling, make sure the rss feed page type is pointing to the right package id 
		$db = Loader::db();
		$db->query('UPDATE PageTypes Set pkgID=? WHERE ctHandle="rational_job_feed"',array($pkg->getPackageID()));

		// install block		
		// TODO: remove this // BlockType::installBlockTypeFromPackage('rss_link', $pkg); 
	}

}