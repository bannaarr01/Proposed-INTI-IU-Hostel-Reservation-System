
var decyclingSerializer=function(obj){var decycledObject=JSON.decycle(obj);return JSON.stringify(decycledObject);}
var appenders={'AnswersAnswersLogger':function(){return JL.createAjaxAppender('AnswersAnswersLogger').setOptions({'url':'/KB/JSNLog/jsnlog.logger'})},'CanadaLogger':function(){return JL.createAjaxAppender('CanadaLogger').setOptions({'url':'/canada/JSNLog/jsnlog.logger'})},'ApplicationStatusLogger':function(){return JL.createAjaxAppender('ApplicationStatusLogger').setOptions({'url':'/AppStatusAdmin/JSNLog/jsnlog.logger'})},'SFSKBSearchLogger':function(){return JL.createAjaxAppender('SFSKBSearchLogger').setOptions({'url':'/SFS/JSNLog/jsnlog.logger'})},'MYAUserManagementLogger':function(){return JL.createAjaxAppender('MYAUserManagementLogger').setOptions({'url':'/useradmin/JSNLog/jsnlog.logger'})},'MYASupportSiteLogger':function(){return JL.createAjaxAppender('MYASupportSiteLogger').setOptions({'url':'/JSNLog/jsnlog.logger'})},'WebTicketLogger':function(){return JL.createAjaxAppender('WebTicketLogger').setOptions({'url':'/ticket/JSNLog/jsnlog.logger'})}};var jsLogger=(function(){this._logger=undefined;function jsLogger(loggerName){try{JL.setOptions({"serialize":decyclingSerializer});this._logger=JL(loggerName);this._logger.setOptions({"appenders":[appenders[loggerName]()]});}catch(e){console.log(e);this._logger={info:function(){},debug:function(){},error:function(){},warn:function(){},fatal:function(){}};}}
function replaceErrorToObject(key,value){try{if(value instanceof Error){var error={};Object.getOwnPropertyNames(value).forEach(function(key){error[key]=value[key];});return error;}}
catch(e){console.log(e);}
return value;}
function getArguments(args){if(args&&args.length>1){var _arr=[];for(var i=1;i<args.length;i++){_arr.push(args[i]);}
return _arr;}
return[];}
jsLogger.prototype.FormatException=function(error){try{return JSON.stringify(error,replaceErrorToObject);}catch(e){console.log(e);return'';}}
jsLogger.prototype.LogInfo=function(msgKey,args){try{var logMsg={Key:msgKey,Args:getArguments(arguments)}
this._logger.info(logMsg);}
catch(e){console.log(e);}}
jsLogger.prototype.LogDebug=function(msgKey,args){try{var logMsg={Key:msgKey,Args:getArguments(arguments)}
this._logger.debug(logMsg);}
catch(e){console.log(e);}}
jsLogger.prototype.LogError=function(msgKey,args){try{var logMsg={Key:msgKey,Args:getArguments(arguments)}
this._logger.error(logMsg);}
catch(e){console.log(e);}}
jsLogger.prototype.LogWarn=function(msgKey,args){try{var logMsg={Key:msgKey,Args:getArguments(arguments)}
this._logger.warn(logMsg);}
catch(e){console.log(e);}}
jsLogger.prototype.LogFatal=function(msgKey,args){try{var logMsg={Key:msgKey,Args:getArguments(arguments)}
this._logger.fatal(logMsg);}
catch(e){console.log(e);}}
return jsLogger;}());var _KBlogger=new jsLogger("AnswersAnswersLogger");var _Canadalogger=new jsLogger("CanadaLogger");var _AppStatuslogger=new jsLogger("ApplicationStatusLogger");var _SFSlogger=new jsLogger("SFSKBSearchLogger");var _MYAUserManagementLogger=new jsLogger("MYAUserManagementLogger");var _SVElogger=new jsLogger("MYASupportSiteLogger");var _WTKlogger=new jsLogger("WebTicketLogger");if(window){window.onerror=function(errorMsg,url,lineNumber,column,errorObj){try{}catch(e){console.log(e);}
return false;}}
if(typeof window!=='undefined'){window.onunhandledrejection=function(event){try{}catch(e){console.log(e);}
return false;};}