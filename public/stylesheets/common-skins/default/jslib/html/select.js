/*
* select(one or multiple) html widget
*/

var HSelect = Class.create();

HSelect.prototype = {
	
	widget : undefined,
	
	initialize : function(widget){
		this.widget = $(widget);
	},
	
	selected : function(value){
		if(this.widget){
			for(var i = this.widget.options.length - 1; i >= 0; i--){
				if(this.widget.options[i] 
					&& this.widget.options[i].value == value){
					this.widget.options[i].selected = true;
					this.widget.onchange();
					break;
				}
			}
		}
	},
	
	remove : function(value){
		if(this.widget){
			for(var i = this.widget.options.length - 1; i >= 0; i--){
				if(this.widget.options[i] 
					&& this.widget.options[i].value == value){
					this.widget.options.remove(i);
				}
			}
		}
	}
}

var HMultiSelect = Class.create();

HMultiSelect.prototype = {
	initialize : function(widget){
		this.widget = $(widget);
	},
	
	load : function(names, values){
		var len = arguments.length;
		if(len > 0){
			if(len >= 1){
				names = names.split(",");
			}
			if(len >= 2){
				values = values.split(",");
			}else{
				values = names.split(",");
			}
			for(var i = 0,j = names.length; i < j; i++){
				this.widget.options.add(new Option(names[i], values[i]));
			}
		}else{
			alert("arguments is not match:" + 0 + " 1 | 2 required");
		}
	},
	
	selectAll : function(){
		for(var i = this.widget.options.length - 1; i >= 0; i--){
			if(this.widget.options[i] != null){
				this.widget.options[i].selected = true;
			}
		}
	},
	
	selected : function(values){
		if(values == null)
			return;
		values = this.toObject(values);
		for(var i = this.widget.options.length - 1; i >= 0; i--){
			if(this.widget.options[i] 
				&& this.contains(values, this.widget.options[i].value)){
				this.widget.options[i].selected = true;
				this.widget.onchange();
				break;
			}
		}
	},
	
	remove : function(values){
		if(values == null)
			return;
		values = this.toObject(values);
		for(var i = this.widget.options.length - 1; i >= 0; i--){
			if(this.widget.options[i] 
				&& this.contains(values, this.widget.options[i].value)){
				this.widget.options.remove(i);
			}
		}
	},
	
	toObject : function(obj){
		var object = new Object();
		if(typeof(obj) == "string"){
			return this.array2Object(object, obj.split(","));
		}else if(obj.constructor == "Array"){
			return this.array2Object(object, obj);
		}
		return obj;
	},
	
	array2Object : function(obj, array){
		for(var i = array.length - 1; i >= 0; i--){
			obj[array[i]] = true;
		}
		return obj;
	},
	
	contains : function(collection, value){
		if(collection == null || typeof(collection) != "object"){
			return false;			
		}
		return collection[value] || false;
	}
}