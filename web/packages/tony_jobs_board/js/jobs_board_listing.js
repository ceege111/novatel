
var JobsBoardListing = {

	init:function(){
		
		tonyPopupLite.init(); 
		
		$(document).bind('popup', function(){  } ); 
	}

}

$( function(){ JobsBoardListing.init(); } );


function TonyPopupLite(){ 
	
	this.wipeOpacity=.9;
	
	this.editBarHeight=0; 
	
	this.init = function(){ 
		if(this.initiated) return; 
		this.rootURL=$('#tonyPopup_rootURL').val();
		var ccmEditBar=$('#ccm-page-controls');  
		if( ccmEditBar && ccmEditBar.get(0) ){
			this.editBarHeight=ccmEditBar.height();  
		} 
		this.addPopupHTML(); 
		
		this.initiated=1;
		
		if( typeof(window.popupObjs)=='undefined' ){
			window.popupObjs=[];
			$(window).resize( function(){ for(var i=0; i < this.popupObjs.length ;i++) this.popupObjs[i].pageWipeInit(1);  });
		}
		window.popupObjs.push(this);
		
		if(this.preInitClick) this.hideThrobber(); 
	}
	
	this.addPopupHTML = function(){
		var b=$('body'); 
		var footerHTML='<div id="TonyPopup_wrap'+this.bID+'" class="TonyPopup_wrap"><div class="TonyPopup_pageWipe"></div><div class="TonyPopup_throbber"></div><div class="TonyPopup_box"><div class="TonyPopup_boxBodyWrap"><div class="TonyPopup_boxBody"></div></div><div class="TonyPopup_boxFooter"></div></div></div>';
		b.prepend(footerHTML);
		
		this.popupWrap= $('#TonyPopup_wrap'+this.bID);
		this.pw= this.popupWrap.find('.TonyPopup_pageWipe'); 
		this.popupThrobber = this.popupWrap.find('.TonyPopup_throbber'); 
		this.pageWipeBox = this.popupWrap.find('.TonyPopup_box'); 
		
		this.pw.get(0).tonyPopup=this;
		this.pw.click( function(){ this.tonyPopup.modalClose(); } );
	}
	
	this.basePath='';
	
	this.pageWipeInit = function( noCenter ){
		if(!this.pw || this.hidden) return;
		try{ 
		wsh=$(document).height(); 
		
		this.popupWrap.css('height',wsh);
		this.popupWrap.css( 'width', $(document).width() );
		if( typeof(noCenter)=='undefined' || !noCenter ) this.centerBox(); 
		}catch(e){ alert(e.message+' pageWipeInit') }
	}
	
	this.closeText='Close';
	
	this.loadURL = function ( url, isNotModal, width, withoutClose ){  	
	
		try{ 
	
			if(!this.initiated){
				this.preInitClick=1;
				this.showThrobber(); 
				return false; 
			} 
					
			if(!this.origWidth) this.origWidth=parseInt(this.pageWipeBox.css('width')+''.replace('px','')); 
			if(width) this.pageWipeBox.css('width',parseInt(width)+'px');
			else if(this.origWidth) this.pageWipeBox.css('width',parseInt(this.origWidth)+'px');			
		
			if(!url) return;
			this.modalCloseOn = (isNotModal)?0:1; 
			
			var withClose = (withoutClose)?0:1;  
			
			this.toggleSelects(0);
			this.showThrobber();
			
			this.pageWipeBox.css('display','none');
			this.pageWipeBox.find('.TonyPopup_boxBody').html(''); 
			var tonyPopup=this;
			//var iframeMode= (useIFrame)?1:0;
			$.ajax({ 
				type:'get',					  
				data:'',
				url: url,
				success: function(response){  
					/*
					eval('var jObj='+response);
					if( jObj && jObj.error ){
						tonyPopup.hide();
						alert(jObj.error);
					}else{   
						
						if(!jObj.iframeMode){
							tonyPopup.addHeaderCSS(jObj.cssFiles);
							tonyPopup.addHeaderJS(jObj.jsFiles); 
						}
						tonyPopup.contentReady();  
					}
					*/ 
					
					if(withClose) response =  '<a class="tonyPopup_closeFloat" onclick="tonyPopupLite.hide()">'+tonyPopupLite.closeText+'</a>'+response;
					
					tonyPopupLite.pageWipeBox.find('.TonyPopup_boxBody').html( response ); 
					
					tonyPopupLite.contentReady();   
				}
			}); 
			
			return false;
			
		}catch(e){ alert(e.message+' pageWipeInit') }
	} 
	
	this.showThrobber = function(){
		this.showPageWipe(); 
		//var t = Math.floor( ( $(window).height() / 2 ) - ( parseInt(this.popupThrobber.css('height').replace('px',''))/2+20) ) +'px';
		var t = $(window).scrollTop() + Math.floor( ($(window).height() / 2) - ( this.popupThrobber.height() / 2 ) );
		this.popupThrobber.css('top', t ) ;
		this.popupThrobber.css('display','block');
	}
	
	this.hideThrobber = function(){
		this.popupThrobber.css('display','none');
	}
	
	this.showPageWipe = function(){
		this.hidden=0;
		this.pageWipeInit(); 
		
		//fade in main wrap
		if(this.popupWrap.css('display')!='block' || this.popupWrap.css('opacity')!=1){
			if(this.popupWrap.css('display')!='block'){
				this.popupWrap.css('opacity',0); 
				this.popupWrap.css('display','block');
			} 
			this.pw.css('opacity',this.wipeOpacity);
			this.popupWrap.animate( {'opacity': 1}, 500 ); 
		}   
	}
	
	this.contentReady = function (){  
		this.hideThrobber();
		this.showBox();		
		//this.activateLinks(1); 
		this.pageWipeInit(); 
		this.boxResizeWatcher();
	}	
	
	this.lastBoxHeight=0;
	this.boxResizeWatcher = function(){
		if(this.hidden){
			this.lastBoxHeight=0;
			return false;
		}
		var h = this.pageWipeBox.height();
		if( this.lastBoxHeight!=0 && this.lastBoxHeight!=h ){ 
			this.pageWipeInit(1); 
		} 
		this.lastBoxHeight=h; 
		setTimeout( 'tonyPopupLite.boxResizeWatcher()',1000 );
	}
	
	this.showBox=function(){ 
		this.popupWrap.css('display','block'); 
		this.pageWipeBox.css('display','block');
		$(document).trigger('popup'); 
	}
	
	this.centerBox=function(){  
		var pwh=this.pageWipeBox.outerHeight(), wh=$(window).height(), t=30;
		if(!this.pageWipeBox) return;  
		t=t+$(window).scrollTop()+this.editBarHeight; 
		if( this.pageWipeBox.css('top').replace('px','')!=t){
			this.pageWipeBox.css('top',t); 
		} 
		//make sure that pageWipe doesn't need to be longer, if box now extends past bottom
		var boxBottom=this.pageWipeBox.position().top+this.pageWipeBox.outerHeight(); 
		if( boxBottom>=this.popupWrap.height() ){ 
			this.popupWrap.height(boxBottom+40); 
		}
	},	
	
	this.hidden=1;
	this.hide = function(){ 
		this.popupWrap.animate( {'opacity':0},500,function(){ $(this).css('display','none');  $(this).find('.TonyPopup_boxBody').html(''); }); 
		this.hidden=1;
	}
	
	//for IE z-index bug
	this.toggleSelects = function(display){
	  for (j=0; j<document.forms.length; j++)
		  for (i=0; i<document.forms[j].elements.length; i++) {
			 n=document.forms[j].elements[i];
			 if (n.tagName == "SELECT"){
				if(display==1) n.style.display='inline';
				else n.style.display='none';
			 }
		  }
	}	
	
	this.modalCloseOn=0;
	this.modalClose=function(){ 
		if( this.popupThrobber.css('display')=='block' ) return false;
		if(this.modalCloseOn) this.hide();  
	}
}
var tonyPopupLite = new TonyPopupLite();