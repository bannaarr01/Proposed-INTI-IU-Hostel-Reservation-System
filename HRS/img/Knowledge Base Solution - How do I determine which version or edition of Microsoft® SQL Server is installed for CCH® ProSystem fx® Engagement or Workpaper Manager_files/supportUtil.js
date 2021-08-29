function EventAttacher(obj,evt,fnc)
{var thisEvent=evt;if(thisEvent.toLowerCase().substr(0,2)=="on")
{thisEvent=thisEvent.substr(2);}
if(obj.addEventListener)
{obj.addEventListener(thisEvent,fnc,false);}
else if(obj.attachEvent)
{obj.attachEvent("on"+thisEvent,fnc);}
else
{if(obj["on"+thisEvent]!=null)
{var sfx=""+(Math.floor(Math.random()*8675309)%1000);var p="old"+thisEvent+sfx;window[p]=[obj["on"+thisEvent],fnc];obj["on"+thisEvent]=new Function("for (var i = 0; i < window[\""+p+"\"].length; i++){window[\""+p+"\"][i]();}");}
else
{obj["on"+thisEvent]=fnc;}}}
function EventDetacher(obj,evt,fnc)
{var thisEvent=evt;if(thisEvent.toLowerCase().substr(0,2)=="on")
{thisEvent=thisEvent.substr(2);}
if(obj.removeEventListener)
{obj.removeEventListener(thisEvent,fnc,false);}
else if(obj.detachEvent)
{obj.detachEvent("on"+thisEvent,fnc);}
else
{obj["on"+thisEvent]=null;}}
function siCookieParser_getValue(name)
{if(this.cookies[name])
{return this.cookies[name];}
return null;}
function siCookieParser(cookieString)
{this.cookies=new Object();var cookieValues=cookieString.split(/;\s*/);this.cookieCount=cookieValues.length;for(var i=0;i<cookieValues.length;i++)
{var cookie=cookieValues[i].split("=");this.cookies[cookie[0]]=cookie[1];}}
siCookieParser.prototype.getValue=siCookieParser_getValue;EventAttacher(window,"load",function()
{var ansExp=new RegExp("/answers/","i");if(ansExp.test(location.href))
{if($)
{if($("#siWklbSignature").attr("width")=="172")return;$("#siCchLogo").append("<img src=\"/images/header/wklb_signature.jpg\" width=\"172\" height=\"54\" alt=\"[WKLB corporate logo]\" title=\"Wolters Kluwer Law and Business\" id=\"siWklbSignature\">");if((new Date()).getTime()<1362376800000)
{$("#siCchSignature").attr("src","/images/header/cch_signature2.jpg").attr("width","173").attr("height","54");}
else
{$("#siCchSignature").attr("src","/images/header/wk_cch.png").attr("width","172").attr("height","42");}}
else if(document.getElementById)
{if(document.getElementById("siWklbSignature"))return;var lbs=document.createElement("img");lbs.setAttribute("src","/images/header/wklb_signature.jpg");lbs.setAttribute("width","172");lbs.setAttribute("height","54");lbs.setAttribute("alt","[WKLB corporate logo]");lbs.setAttribute("title","Wolters Kluwer Law and Business");lbs.setAttribute("id","siWklbSignature");siCchLogo=document.getElementById("siCchLogo");siCchLogo.appendChild(lbs);siCchSignature=document.getElementById("siCchSignature");siCchSignature.setAttribute("height","54");siCchSignature.setAttribute("width","172");if((new Date()).getTime()>=1362376800000)
{siCchSignature.setAttribute("src","/images/header/wk_cch.gif");siCchSignature.setAttribute("width","248");}}
else if(document.all)
{if(document.all.siWklbSignature)return;}}});EventAttacher(window,"load",function()
{$("#siTabList img").each(function()
{if($(this).attr("width")=="90")
{$(this).attr("width","80");}
else if($(this).attr("width")=="115")
{$(this).attr("width","105");}});});if((/http:\/\/support/i).test(location.href))
{location.href="https://"+location.href.substr(7);}