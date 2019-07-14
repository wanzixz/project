(function($) {if (!$.net) {var defaultOptions = { contentType: "application/json; charset=utf-8", dataType: "json", type: "POST"};$.extend({ net: {} });$.extend($.net, {CallWebMethod: function(options, method, args, callback) {var jsonStr = JSON.stringify(args);var parameters = $.extend({}, defaultOptions);var url0 = options.url + "/" + method;$.extend(parameters, options, { url: url0, data: jsonStr, success: callback });$.ajax(parameters);}});}var services = new Handler();$.extend($.net, { Handler: services });})(jQuery);function Handler() {this.Options = { url: "http://m.pcpy.net/ajax/Handler.ashx" };}Handler.prototype.GetCarByNumberByUser=function(paras,callback){
	var args = {paras:paras,ajax:'jquery'};
	var options={dataType:'json'};
	$.extend(true,options,{},this.Options);
	$.net.CallWebMethod(options,'GetCarByNumberByUser', args, callback);
}		

Handler.prototype.get_CurrentHomeUser=function(callback){
	var args = {ajax:'jquery'};
	var options={dataType:'json'};
	$.extend(true,options,{},this.Options);
	$.net.CallWebMethod(options,'get_CurrentHomeUser', args, callback);
}		

Handler.prototype.set_CurrentHomeUser=function(value,callback){
	var args = {value:value,ajax:'jquery'};
	var options={dataType:'json'};
	$.extend(true,options,{},this.Options);
	$.net.CallWebMethod(options,'set_CurrentHomeUser', args, callback);
}		

