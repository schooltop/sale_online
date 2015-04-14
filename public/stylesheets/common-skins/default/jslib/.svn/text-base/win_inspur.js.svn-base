/*********************************************************
 * 
 * windowConfigs:
 * 			id:			window id, default "dialog"
 * 			contextPath:web context and required
 * 			className:	default "alphacube"
 * 			width:		default 300
 * 			height:		default 200
 * 			zIndex:		default 100
 * 			resizable:	true|false, default true
 * 			title:		default ""
 * 			draggable:	true|false, default true
 * 			inputType: checkbox|radio, default checkbox, widget type in window
 * 			selected:	all|none|state, default "state", according as values of the hidden target widget.
 * 			initSync:   true|false, default true, when init inspur window, target change by source changed
 * 			asyn:		true|false, default true, access of ajax
 * 			optional:   string, select-one add a optional item if not undefined
 * 			trigger:	click it to open window
 * 			target:		the  widget or id of sub type(the text widget supported now, other not)
 * 			hiddenTarget:	the  widget or id of sub type hidden(the text widget supported now, other not),
 * 							values of target to store the server side, join with "," 
 * 							and default values of window from the widget value
 * 			hiddenType: text|value, select-multiple default value, select-one default text
 * 			dataType:	tree|html|xml, default xml. if dataType:html, selected is disabled, 
 * 						and name of target and hiddenTarget widget send server(such as: target=targetName&hiddenTarget=hiddenTargetName) 
 * sources:				source widget and parameters maybe use it's value
 * urlCase:				dict|designationMan|{url:'/dictionaryAction',method:'getSubdictionary'}, String or Object
 * operationConfigs:	parameters for get datas from server
 * 
 * such as:
 * 		<nwom:dict name="sourceWidgetId" dictClass="task_operation"/>
 *		<select value="222" id="specialChild" multiple></select>
 *		<input type="text" value="222,hidden" id="specialChildIds" size="50"></input>
 *		<input type="button" value=".." name="trigger"></input>
 * 			new InspurWindow(
 * 				{
 * 					contextPath:'/ensp', 
 * 					title:'title',
 * 					draggable:false,
 * 					trigger:'trigger',
 * 					target:'specialChild',
 * 					hiddentarget:'specialChildIds'
 * 				},
 * 				{parentClass:'sourceWidgetId'},
 * 				'dict',
 * 				{dictClass:'task_childoper'});
 * 
 *********************************************************/
 
String.prototype.trim = function(){
	return this.replace(/(^\s+)|(\s+$)|(^��+)|(��+$)/g, "");
};
	
String.prototype.startsWith = function(prefix){
	if (prefix instanceof RegExp) {
		return new RegExp("^" + prefix.source).test(this);
	} else {
		return new RegExp("^" + prefix).test(this);
	}
}

var InspurWindow = Class.create();

InspurWindow.closeWindow = function(id){
	Windows.close(id);
}

InspurWindow.inspurWindowMaxId = 1;
InspurWindow.prototype = {
	
	getUrlByUrlCase : function(urlCase){
		if(this.isUndefined(urlCase) || urlCase == null){
			return "";
		}
		if(this.isString(urlCase)){
			urlCase = this.getUrlFromString(urlCase);
		}
		return this.getUrlFromObject(urlCase);
	},
	
	getUrlFromString : function(urlCase){
		if(urlCase == 'dict'){
			return {url: "/dictionaryAction", method: "getSubdictionary"};
		}else if(urlCase == 'designationMan'){
			return {url: "/configDesignationMan", method: "getDesignationMen"};
		}else if(urlCase == 'designationDept'){
			return {url: "/configDesignationMan", method: "getDesignationDept"};
		}else if(urlCase == 'hr'){
			return {url: "/humanResource", method: ""};
		}else if(urlCase == 'hrTree'){
			return {url: "/humanDynaTree", method: ""};
		}else if(urlCase == 'wf'){
			return {url: "/workflowResource", method: ""};
		}else{
			return {};
		}
	},
	
	getUrlFromObject : function(urlCase){
		if(urlCase.url){
			var url = urlCase.url;
			if(url != null && url != ""){
				if(urlCase.method){
					var method = urlCase.method;
					if(method != null && method != ""){
						return url + "!" + method + ".ilf";
					} else {
						return url + ".ilf";
					}
				} else {
					return url + ".ilf";
				}
			}
		}else{
			//alert(urlCase.url + " not defined");
		}
		return "";
	},
	
	initialize : function(winConfigs, sources, urlCase, operationConfigs){
		this.windowConfigs = {};
		this.windowOptions = {};
		this.windowTreeDatas = {};
		this.url = this.getUrlByUrlCase(urlCase);
		this.operationConfigs = operationConfigs;
		this.isShowWindowDataFlag = false;
		this.initWindow(winConfigs);
		this.sources = this.getSources(sources);
		this._registerEventToSources();
		this._registerEventToTrigger();
		this._registerEventToTarget();
		var target = this.windowConfigs.target;
		if(target && this.isXMLData()
			&& (this.isEmpty(target)||this.isSelectO(target)) && this.windowConfigs.initSync){
			this.triggerTarget();
		}
	},
	
	initWindow : function(winConfigs){
		this.asynchronous = winConfigs.asyn;
		if(this.isUndefined(winConfigs, "id")){
			winConfigs["id"] = "dialog" + InspurWindow.inspurWindowMaxId;
			InspurWindow.inspurWindowMaxId++;
		}
		this.initWindowConfig(winConfigs, "id", "");
		this.initWindowConfig(winConfigs, "dataType", "xml");
		if(!this.isXMLData()){
			winConfigs.selected = "none";
		}
		if(this.isUndefined(winConfigs, "title")){
			this.windowConfigs["title"] = "";
		} else {
			this.windowConfigs["title"] = winConfigs.title;;
		}
		this.initWindowConfig(winConfigs, "contextPath", "");
		this.initWindowConfig(winConfigs, "initSync", true);
		this.initWindowConfig(winConfigs, "optional",undefined);
		this.initWindowConfig(winConfigs, "inputType", "checkbox");
		this.initWindowConfig(winConfigs, "selected", "state");
		this.initWindowConfig(winConfigs, "trigger", undefined, $(winConfigs["trigger"]));
		this.initWindowConfig(winConfigs, "target", undefined, $(winConfigs["target"]));
		this.initWindowConfig(winConfigs, "hiddenTarget", winConfigs["target"], $(winConfigs["hiddenTarget"]));
		this.initWindowConfig(winConfigs, "hiddenType", "");
		//window options
		this.initWindowOption(winConfigs, "className", "alphacube");
		this.initWindowOption(winConfigs, "width", 300);
		this.initWindowOption(winConfigs, "height", 200);
		this.initWindowOption(winConfigs, "zIndex", 100);
		this.initWindowOption(winConfigs, "resizable", true);
		this.initWindowOption(winConfigs, "title", "");
		this.initWindowOption(winConfigs, "draggable", true);
		this.windowOptions = winConfigs;
		if(typeof(Effect) != "undefined"){
			this.windowOptions.showEffect = Effect.Appear;
			this.windowOptions.hideEffect = Effect.SwitchOff;
		}
	},
	
	initWindowConfig : function(winConfigs, key, defaultValue, formatValue){
		if(this.isUndefined(winConfigs, key)){
			this.windowConfigs[key] = defaultValue;
		} else {
			this.windowConfigs[key] = (formatValue ? formatValue : winConfigs[key]);
			winConfigs[key] = undefined;
		}
	},
	
	initWindowOption : function(winConfigs, key, defaultValue){
		if(this.isUndefined(winConfigs, key)){
			winConfigs[key] = defaultValue;
		}
	},
	
	getSources : function(sources){
		if(!sources) return {};
		for(var p in sources){
			var source = $(sources[p]);
			if(!source) alert(sources[p] + " widget not found.");
			sources[p] = source;
		}
		return sources;
	},
	
	_registerEventToSources : function(){
		var sources = this.sources;
		if(sources){
			for(var p in sources){
				var source = sources[p];
				if(source){
					var change = source.onchange;
					source.onchange = function(){
						if(change != null){
							change();
						}
						this.triggerTarget();
					}.bind(this);
				}
			}
		}
	},
	
	_registerEventToTarget : function(){
		var target = this.windowConfigs.target;
		var hidden = this.windowConfigs.hiddenTarget;
		if(target){
			if(hidden && (target != hidden) && !this.isInput(target)){
				var change = target.onchange;
				target.onchange = function(){
					if(change != null){
						change();
					}
					this.triggerHiddenTarget(target, hidden);
				}.bind(this);
			}
		}
	},
	
	triggerHiddenTarget : function(target, hidden){
		this.setHiddenValue(target, hidden);
	},
	
	isEmpty : function(widget){
		if(widget){
			if(this.isInput(widget) || this.isSelectO(widget)){
				return (widget.value == null || widget.value == "");
			}else if(this.isSelectM(widget)){
				return widget.options.length <= 0;
			}
		} else {
			return true;
		}
	},
	
	isInput : function(widget){
		return this.checkHtmlTag(widget, 'INPUT');
	},
	
	isSelect : function(widget){
		return this.checkHtmlTag(widget, 'SELECT');
	},
	
	isSelectO : function(widget){
		return this.checkHtmlType(widget, 'select-one');
	},
	
	isSelectM : function(widget){
		return this.checkHtmlType(widget, 'select-multiple');
	},
	
	checkHtmlTag : function(widget, tag){
		return (widget && widget.tagName == tag) ? true : false;
	},
	
	checkHtmlType : function(widget, type){
		return (widget && widget.type == type) ? true : false;
	},
	
	triggerTarget : function(){
		var myAjax = this.accessServer();
	},
	
	accessServer : function(){
		var placeholder = "";
		if(this.win){// when open window, data from server fill it
			placeholder = this.getWindowContainer();
		}
		return new Ajax.Updater(
			placeholder,
			this.getUrl(), 
			{method: 'post',
			asynchronous: this.asynchronous,
			postBody: this.getRequestParameters(), 
			onFailure: this.errorFunction,
			onComplete: this.onRequestComplete.bind(this),
			evalScripts: true
		});
	},
	
	handlerFunction : function(request) {
		if(this.isTreeData()){
			if(this.win){
				this.showTreeData(request.responseText);
			}
		}else if(this.isHTMLData()){
			if(this.win){
				$(this.getWindowContainer()).innerHTML = request.responseText; 
			}
		}else{
			this.showData(this.getSimpleItems(request.responseXML));
		}
	},
	
	showTreeData : function(text){
		if(text && text != ""){
			var ul = "<ul id='"+this.getTreeContainer()+"' style='display:none'>";
			var iss = text.startsWith("<ul>");
			if(iss){
				text = ul + text.substring(4);
			}else{
				text = ul + text + "</ul>";
			}
			var div = $(this.getWindowContainer());
			if(div){
				div.innerHTML = text;
				if(typeof Inspur != "undefined" && typeof Inspur.Tree != "undefined"){
					var tree = new Inspur.Tree(
						{tree: $(this.getTreeContainer()), dynamic: true, initLevel: 0, defaultIcons: 'orgIcon'}
					);
					tree.onItemSelect = this.treeItemSelect.bind(this);
					tree.onItemLoad = this.treeItemLoad.bind(this);
				}else{
					alert("/comps/utils/inspur.js, /comps/tree/src/tree.js, \n/comps/tree/themes/tree-lines.css, /comps/tree/ext/org.css are required");
				}
			}
		}
	},
	
	// load element in item
	treeItemLoad : function(itemId, ele, item){
		if(ele && ele.tagName && ele.tagName == "INPUT"){// search input checkbox|radio
			if(ele.type == "radio" || ele.type == "checkbox"){
				if(ele.id == "true"){// use id = true to select element
					if(ele.type == "checkbox")
						ele.checked = true;
					ele.id = null;
					this.treeItemSelect(itemId, ele, item);// init item selected
				}
			}
		}
	},
	
	treeItemSelect : function(itemId, eSource, item){
		if(item){
			var widget = null;
			if(eSource && eSource.tagName){// eSource exists or load
				widget = eSource;
			}else{
				var widgets = item.getElementsByTagName("INPUT");// document.getElementsByName is not available
				for(var index=widgets.length - 1; index>=0; index--) {
					widget = widgets[index];
					if(widget && widget != null){
						if(typeof(widget.name) != "undefined" 
						&& widget.name == this.getTreeContent()){
							break;
						}
					}else{
						widget = null;
					}
				}
			}
			if(widget != null){
				var simple = eval("new SimpleItem(" + widget.value + ")");
				if(widget.type == "radio"){
					var orig = this.windowTreeDatas["windowTreeRadioData"];
					if(orig)orig.checked = false;
					if(!widget.checked){
						widget.checked = true;
					}
					//radio select is available in first load(create...)
					this.windowTreeDatas["windowTreeRadioData"] = widget;
				}else{
					if(widget.checked){
						this.windowTreeDatas[simple.name + "_" + simple.value] = simple;
					}else{
						this.windowTreeDatas[simple.name + "_" + simple.value] = undefined;
					}
				}
			}
		}else{
			//alert(itemId+" not found.");
		}
	},
	
	showData : function(items){
		if(this.isShowWindowDataFlag){
			this.showWindowData(items);
			return;
		}
		this.showTargetData(items);
	},
	
	showTargetData : function(items){
		if(items){
			for(var index=items.length - 1; index >= 0; index--) {
				var item = items[index];
				if(!item || item == null){
					items.splice(index, 1);
				}
			}
			var target = this.windowConfigs.target;
			if(target){
				if(this.isInput(target)) {
					this.showTextData(items);
				}else if(this.isSelectO(target)) {
					this.showSelectData(items);
				}else if(this.isSelectM(target)){
					this.showMultiSelectData(items);
				}else{
					var name = (target.id ? target.id : target.name);
					alert(target.tagName + "(" + target.type + "):" + name + " not found.");
				}
			}
		}
	},
	
	showTextData : function(simples){
		var target = this.windowConfigs.target;
		if(target) target.value = "";
		var hiddenTarget = this.windowConfigs.hiddenTarget;
		if(hiddenTarget) hiddenTarget.value = "";
		for (var i = 0; i < simples.length; i++) {
			if(target) target.value += "," + simples[i].name;
			if(hiddenTarget && (target != hiddenTarget)) hiddenTarget.value += "," + simples[i].value;
		}
		if(target && target.value != ""){
			target.value = target.value.substring(1);
		}
		if(hiddenTarget && (target != hiddenTarget) && hiddenTarget.value != ""){
			hiddenTarget.value = hiddenTarget.value.substring(1);
		}
	},
	
	showSelectData : function(simples){
		var target = this.windowConfigs.target;
		if(target){
			var retValue = target.value;
			target.options.length = 0;
			if(!this.isUndefined(this.windowConfigs.optional)){
				target.options.add(new Option("--please select--", this.windowConfigs.optional));
			}
			for (var i = 0; i < simples.length; i++) {
				var option = target.options.length;
				target.options[option] = new Option(simples[i].name, simples[i].value);
				if(retValue == simples[i].value){
					target.options[option].selected = true;
				}
			}
			if(target.options.length > 0 && target.selectedIndex < 0){
				target.options[0].selected = true;
			}
			this.setHiddenValue(target, this.windowConfigs.hiddenTarget);
		}
	},
	
	setHiddenValue : function(target, hidden){
		if(target && hidden && (target != hidden)){
			if(this.isSelectO(target)){
				if(target.selectedIndex >= 0) {
					var type = this.windowConfigs.hiddenType;
					if(type != ""){
						hidden.value = target.options[target.selectedIndex][type];
					} else {
						hidden.value = target.options[target.selectedIndex].text;
					}
				} else {
					hidden.value = "";
				}
			}else if(this.isSelectM(target)){
				var value = "";
				var type = this.windowConfigs.hiddenType;
				for(var i = 0; i < target.options.length; i++){
					if(target.options[i].selected){
						if(type != ""){
							value += "," + target.options[i][type];
						} else {
							value += "," + target.options[i].value;
						}
					}
				}
				if(value.length > 0)
					value = value.substring(1);
				hidden.value = value;
			}
		}
	},
	
	showMultiSelectData : function(simples){
		var target = this.windowConfigs.target;
		if(target) {
			target.options.length = 0;
			for (var i = 0; i < simples.length; i++) {
				var option = target.options.length;
				target.options[option] = new Option(simples[i].name, simples[i].value);
				target.options[option].selected = true;
			}
			this.setHiddenValue(target, this.windowConfigs.hiddenTarget);
		}
	},
	
	showWindowData : function(simples){
		var div = $(this.getWindowContainer());
		if(div){
			var content = "";
			if(simples){
				var values = this.getTargetValues();
				var checked = false;
				var radioChecked = false;
				var type = this.windowConfigs.inputType; 
				for(var i = 0; i < simples.length; i++){
					var item = simples[i];
					if(this.windowConfigs.selected != "none"){
						if(type == "radio"){
							if(this.contains(item.value, values) && !radioChecked){
								checked = true;
								radioChecked = true;
							}else{
								checked = false;
							}
						}else{
							if(this.contains(item.value, values) || this.windowConfigs.selected == "all"){
								checked = true;
							}else{
								checked = false;
							}
						}
					}
					content += "<input type='" + type + "' name='" + this.getXMLContent() + "' value=\"" + item.toString() + "\" " + (checked ? "checked" : "") + ">";
					content += item.name + item.remark + "<br>";
				}
			}
			div.innerHTML = content;
		}
	},
	
	getWindowContainer : function(){
		return this.win.getId() + "MainContent";
	},
	
	getXMLContent : function(){
		return "windata_"+this.win.getId();
	},
	
	getTreeContent : function(){
		return "winInspurTreeData";
	},
	
	getTreeContainer : function(){
		return "winTreeContainer";
	},
	
	getOK : function(){
		return this.win.getId() + "_ok";
	},
	
	getTargetValues : function(){
		var target = this.windowConfigs.target;
		if(target){
			if(this.isInput(target)) {
				var hiddenTarget = this.windowConfigs.hiddenTarget;
				if(hiddenTarget){
					return hiddenTarget.value.split(",");
				}
				return target.value.split(",");
			}else if(this.isSelectO(target)){
				var values = new Array();
				if(target.selectedIndex >= 0){
					values.push(target.options(target.selectedIndex).value);
				}
				return values;
			}else if(this.isSelectM(target)) {
				var values = new Array();
				var options = target.options;
				for(var i = options.length - 1; i >= 0; i--){
					if(options[i].selected){
						values.push(options[i].value);
					}
				}
				return values;
			}
		}
		return null;
	},
	
	contains : function(value, values){
		if(value && values){
			for(var i = values.length - 1; i >= 0; i--){
				if(value == values[i]){
					return true;
				}
			}
		}
		return false;
	},
	
	getSimpleItems : function(xml){
		var simples = new Array();
		var root = xml.documentElement;
		// grab list of options
		var respNode = root.getElementsByTagName("response")[0];
		var items = respNode.getElementsByTagName("item");
		for (var i=0; i<items.length; i++) {
			var name = items[i].getElementsByTagName("name")[0].firstChild.nodeValue;
			var value = items[i].getElementsByTagName("value")[0].firstChild.nodeValue;
			var remark = items[i].getElementsByTagName("remark");
			if(remark && remark != null && remark[0] != null){
				remark = remark[0].firstChild.nodeValue;
			}
			simples.push(new SimpleItem(name, value, remark));
		}
		return simples;
	},
	
	onRequestComplete : function(request) {
	    if (request != null && request.status == 200) {
	    	this.handlerFunction(request);
	    } else {
	        this.errorFunction(request);
	    }
  	},
	
	errorFunction : function(request){
		alert("get data failed.url:" + this.getUrl() + ";params:" + this.getParametersBySources() + this.getParametersByOther());
	},
	
	getUrl : function(){
		return this.windowConfigs.contextPath + this.url;
	},
	
	getRequestParameters : function(){
		return this.getParametersBySources() + this.getParametersByOther() + $H(this.operationConfigs).toQueryString();
	},
	
	getParametersBySources : function(){
		var params = "";
		for(var p in this.sources){
			if(this.sources[p])
				params += p + "=" + this.getSourceValue(this.sources[p]) + "&";
		}
		return params;
	},
	
	getParametersByOther : function(){
		var	params = "";
		if(this.isHTMLData()){
			if(this.windowConfigs.target){
				var name = this.windowConfigs.target.id;
				params += "target=" + (name ? name : this.windowConfigs.target.name);
			}
			if(this.windowConfigs.hiddenTarget){
				var name = this.windowConfigs.hiddenTarget.id;
				params += "hiddenTarget=" + (name ? name : this.windowConfigs.hiddenTarget.name);
			}
			return params + "&";
		}else if(this.isTreeData()){
			params += "widgetType=" + this.windowConfigs.inputType + "&";
		}
		return params;
	},
	
	getSourceValue : function(source){
		if(this.isSelectM(source)){
			var value = "";
			for(var i = 0; i < source.options.length; i++){
				if(source.options[i].selected)
					value += "," + source.options[i].value;
			}
			if(value.length > 0){
				value = value.substring(1);
			}
			return value;
		} else {
			return source.value;
		}
	},
	
	_registerEventToTrigger : function(){
		var trigger = this.windowConfigs.trigger;
		if(trigger){
			if(typeof Window != "undefined"){
				this.win = new Window(this.windowConfigs["id"],this.windowOptions);
				Windows.addObserver(this);
			}else{
				alert("dir: comps/windows/javascripts, file: window.js and effects.js, required");
			}
			var click = trigger.onclick;
			trigger.onclick = function(){
				if(click != null){
					click();
				}
				this.showWindow();
			}.bind(this);
		}
	},
	
	//window event
	onClose : function(event, win){
		if(this.win == win){
			this.isShowWindowDataFlag = false;
			if(this.isTreeData()){
				this.windowTreeDatas = {};
			}
		}
	},
	
	_registerEventToWindowOk : function(){
		var ok = $(this.getOK());
		if(ok){
			var click = ok.onclick;
			ok.onclick = function(){
				this.getInspurWindowData();
				if(click != null){
					click();
				}
			}.bind(this);
		}
	},

	getInspurWindowData : function(){
		if(this.isTreeData()){
			var radio = this.windowTreeDatas["windowTreeRadioData"];
			if(radio){
				if(radio.value)
					this.showTargetData([eval("new SimpleItem(" + radio.value + ")")]);
			}else{
				this.showTargetData(Object.values(this.windowTreeDatas));
			}
		}else{
			var datas = document.getElementsByName(this.getXMLContent());
			if(datas){
				var items = new Array();
				for(var i = 0; i < datas.length; i++){
					if(datas[i].checked){
						if(!this.isUndefined(datas[i].value) && datas[i].value != "")
						items.push(eval("new SimpleItem(" + datas[i].value + ")"));
					}
				}
				this.showTargetData(items);
			}
		}
	},
	
	showWindow : function(){
		this.win.getContent().innerHTML= this.getWindowFrameContainer();
		if(this.isXMLData())
			this.isShowWindowDataFlag = true;
		this.accessServer();
		this.win.showCenter();
		if(!this.isHTMLData()){
			this._registerEventToWindowOk();
		}
	},
	
	isHTMLData : function(){
		return this.windowConfigs.dataType == "html";
	},
	
	isXMLData : function(){
		return this.windowConfigs.dataType == "xml";
	},
	
	isTreeData : function(){
		return this.windowConfigs.dataType == "tree";
	},
	
	getWindowFrameContainer : function(){
		var fieldset = "<fieldset><legend>" + this.windowConfigs.title + "</legend>" + "<div id='" + this.getWindowContainer() + "'/>" + "</fieldset>";
		var buttons = "";
		if(!this.isHTMLData()){
			buttons = "<tr><td>" + this.getOkButton() + this.getCancleButton() + "</td></tr>";
		}
		return "<table><tr><td>" + fieldset + "</td></tr>" + buttons + "</table>";
	},
	
	getWindow : function(id){
		return Windows.getWindow(id);
	},
	
	getOkButton : function(){
		return "<input type='button' id='" + this.getOK() + "' value='确定' onclick='InspurWindow.closeWindow(\""+this.win.getId()+"\")'>";
	},
	
	getCancleButton : function(){
		return "<input type='button' value='取消' onclick='InspurWindow.closeWindow(\""+this.win.getId()+"\")'>";
	},
	
	isUndefined : function(params, param){
		if(arguments.length == 1)
			return typeof params == "undefined";
		return typeof params[param] == "undefined";
	},
	
	isNull : function (a) {
	  return typeof a == 'object' && !a;
	},
	
	isObject : function(a){
		return a != null && (typeof a == 'object');
	},
	
	isString : function (a) {
	  return typeof a == 'string';
	},
	
	printObject : function(obj){
		if(!this.isNull(obj)){
			var str = "";
			for(var p in obj){
				str += p + ":" + obj[p] + ",";
			}
			alert(str);
		}else{
			alert("obj is null");
		}
	}
}
/********************************************************
 * 
 * data from server
 * 
 ********************************************************/
function SimpleItem(name, value, remark){
	if(arguments.length == 1 && typeof arguments[0] != "string"){
		return arguments[0];
	}else{
		this.name = name;
		this.value = value;
		this.remark = (typeof remark == "undefined") ? "" : remark;
	}
}
SimpleItem.prototype = {
	toString : function(){
		var str = "";
		for(var p in this){
			str += "," + p + ":";
			if(typeof p == 'string'){
				str += "'" + this[p] + "'";
			}else{
				str += this[p];
			}
		}
		if(str.length > 0)
			str = str.substring(1);
		return "{"+str+"}";
	}
}