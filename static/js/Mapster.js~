(function(window,google){
    var Mapster = (function(){
    	function Mapster(element,opts){
    	    this.gMap = new google.maps.Map(element,opts);
    	    this.markers = [];
    	}
    	Mapster.prototype = {
    	    zoom: function(level){
    		if(level){
    		    this.gMap.setZoom(level);
		    
    		} else{
    		    this.gMap.getZoom();
    		}
    	    },
    	     _on: function(opts){
    		var self = this;
    		google.maps.event.addListener(opts.obj,opts.event,function(e){
    		    opts.callback.call(self,e);
    		});
    	    },
    	    addMarker: function(opts){
    		var marker;
    		marker = this._createMarker(opts);
    		this.markers.push(marker);
		
		
    		if(opts.event){
    		    this._on({
    			obj : marker,
    			event: opts.event.name,
    			callback:opts.event.callback
    		    });
    		}

    		if(opts.content){
    		    this._on({
    			obj : marker,
    			event : "click",
    			callback:function(){
    			    var infoWindow = new google.maps.InfoWindow({
    				content: opts.content
    			    });
    			    infoWindow.open(this.gMap,marker);
    			}		
			
    		    });
    		}
    		return marker
				
    	    },
    	    _createMarker: function(opts){
    		opts.map = this.gMap
    		return new google.maps.Marker(opts);
    	    },

	    _removemarker: function(marker){
		var indexof = this.markers.indexOf(marker);
		
		if(indexof != -1){
	            this.markers.splice(indexof,1);
	            marker.setMap(null);
		    
		}
	    },
		
	    deleteMarkers: function(){
		var i = 0;
		
		for(;i<this.markers.length;){
	            this._removemarker(this.markers[i]);
		    
		 }
		
	    }
	    
    	}
	
    	return Mapster;
    }());

    Mapster.create = function(element,opts){
    	return new Mapster(element,opts);
    };
    window.Mapster = Mapster;
}(window,google));
