<?php 

class RationalJobFeed extends Page {

	protected $rssID=0; 
	protected $company=''; 
	protected $format='view'; 
	protected $numToDisplay=20; 
	protected $resultsParentID=0; 
	protected $orderBy='';
	static public $sortOptions=array( 'newest'=>'Newest', 'oldest'=>'Oldest', 'title'=>'Title', 'titleDesc'=>'Title Descending', 'display'=>'Display Order'); //, 'displayDesc'=>'Display Order Descending' );
	protected $resultsPageTypeID=0; 
	protected $resultsUID=0;
	protected $descSource=2; 
	protected $descSourceAreaHandle='Main'; 
	protected $richText=1;
	protected $truncateChars=0;
	protected $cacheHours=1;
	protected $includeChildren=false; 
	
	
	public static function getByID($cID, $cvID = 'ACTIVE') { 
		$where = "where Pages.cID = ?"; 
		$c = new RationalJobFeed;
		$c->populatePage($cID, $where, $cvID);	
		$c->loadRssData();
		return $c;
	}	 


	public function loadRssData(){
		$db = Loader::db();
		$sql = 'SELECT * FROM RationalJobFeeds WHERE cID='. intval($this->getCollectionID());
		$data = $db->getRow($sql); 
		if(is_array($data) && count($data)){
			$this->setRssID($data['rssID']);
			$this->setCompany($data['company']);
			$this->setFormat($data['format']);
			$this->setNumToDisplay($data['numToDisplay']);
			$this->setFeedParentCID($data['cParentID']);
			$this->setOrderBy($data['orderBy']);
			$this->setResultsPageTypeID($data['ctID']); 
			$this->setResultsUID($data['uID']);
			$this->setDescSource($data['descSource']);
			$this->setDescSourceAreaHandle($data['descSourceAreaHandle']);
			$this->setRichText($data['richText']);
			$this->setTruncateChars($data['truncateChars']);
			$this->setCacheHours($data['cacheHours']);
			$this->setIncludeChildren($data['includeChildren']);
		}
	}
	
	public function save(){
		$db = Loader::db();  
		
		if( $this->getRssID() ){ 
			$vals = array( $this->getCollectionID(), $this->getCompany(), $this->getFormat(), $this->getNumToDisplay(), $this->getFeedParentCID(), $this->getOrderBy(), $this->getResultsPageTypeID(), $this->getResultsUID(), $this->getDescSource(), $this->getDescSourceAreaHandle(), $this->getTruncateChars(), $this->getRichText(), $this->getCacheHours(), $this->includeChildren(), $this->getRssID() ); 
			$sql = 'UPDATE RationalJobFeeds SET cID=?, company=?, format=?, numToDisplay=?, cParentID=?, orderBy=?, ctID=?, uID=?, descSource=?, descSourceAreaHandle=?, truncateChars=?, richText=?, cacheHours=?, includeChildren=? WHERE rssID=?';
			return $db->query( $sql , $vals ); 
		}else{
			$vals = array( $this->getCollectionID(), $this->getCompany(), $this->getFormat(), $this->getNumToDisplay(),  $this->getFeedParentCID(), $this->getOrderBy(), $this->getResultsPageTypeID(), $this->getResultsUID(), $this->getDescSource(), $this->getDescSourceAreaHandle(), $this->getTruncateChars(), $this->getRichText(), $this->getCacheHours(), $this->includeChildren() );
			$result = $db->query( 'INSERT INTO RationalJobFeeds ( cID, company, format, numToDisplay, cParentID, orderBy, ctID, uID, descSource, descSourceAreaHandle, truncateChars, richText, cacheHours, includeChildren) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)' , $vals ); 
			if($result) $this->setRssID( $db->Insert_ID() ); 
			return $result;
		}
	}
	
	public function setRssID($v){ $this->rssID=intval($v); } 
	public function getRssID(){ return intval($this->rssID); }
	public function getFormat(){ return $this->format; }
	public function setFormat($v){ $this->format=$v; }
	public function getCompany(){ return $this->company; }
	public function setCompany($v){ $this->company=$v; }
	public function getNumToDisplay(){ return intval($this->numToDisplay); }
	public function setNumToDisplay($v){ $this->numToDisplay=intval($v); }
	public function getFeedParentCID(){ return intval($this->resultsParentID); }
	public function setFeedParentCID($v){ $this->resultsParentID=intval($v); } 
	public function getOrderBy(){ return $this->orderBy; }
	public function setOrderBy($v){ $this->orderBy=$v; }  
	public function getResultsPageTypeID(){ return intval($this->resultsPageTypeID); }
	public function setResultsPageTypeID($v){ $this->resultsPageTypeID=intval($v); } 
	public function getResultsUID(){ return intval($this->resultsUID); }
	public function setResultsUID($v){ $this->resultsUID=intval($v); } 
	
	public function getDescSource(){ return intval($this->descSource); }
	public function setDescSource($v){ $this->descSource=intval($v); } 
	public function getDescSourceAreaHandle(){ return $this->descSourceAreaHandle; }
	public function setDescSourceAreaHandle($v){ $this->descSourceAreaHandle=$v; } 
	
	public function getRichText(){ return intval($this->richText); }
	public function setRichText($v){ $this->richText=intval($v); }
	public function getTruncateChars(){ return intval($this->truncateChars); }
	public function setTruncateChars($v){ $this->truncateChars=intval($v); }
	
	public function getCacheHours(){ return floatval($this->cacheHours); }
	public function setCacheHours($v){ $this->cacheHours=floatval($v); }
	
	public function includeChildren(){ return intval($this->includeChildren); } 
	public function setIncludeChildren($v){ $this->includeChildren=intval($v); }
	
}

?>