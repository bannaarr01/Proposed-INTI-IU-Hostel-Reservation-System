function kbRemoveFormatting(el_pv){for(var i=0;i<el_pv.childNodes.length;i++){var curEl=el_pv.childNodes[i];if(curEl.nodeName.substr(0,1)!="#"){if(curEl.nodeName.toLowerCase()!="li"){curEl.removeAttribute("style",0);}
kbRemoveFormatting(curEl);if(curEl.nodeName.toLowerCase()=="font"){var newEl=document.createElement("span");for(var j=0;j<curEl.childNodes.length;j++){newEl.appendChild(curEl.childNodes[j].cloneNode(true));}
el_pv.replaceChild(newEl,curEl);}}}}
function fixKbLinks(){var kbMainBody=document.getElementById("kbMainBody");if(kbMainBody!=null){kbRemoveFormatting(kbMainBody);}
var idx=0;var primusLinkPattern=/primus:\/\/:([\d\w]+)/;var spacePattern=/&nbsp;/gi;for(var i=0;i<document.links.length;i++){idx=document.links[i].href.indexOf("/attachments/");if(idx>=0){document.links[i].href="/attachments/"+document.links[i].href.substr(idx+13);}
else if(primusLinkPattern.test(document.links[i].href)){var lnkVals=primusLinkPattern.exec(document.links[i].href);document.links[i].href="/kb/solution.aspx/"+lnkVals[1];}
if(document.links[i].innerHTML){document.links[i].innerHTML=document.links[i].innerHTML.replace(spacePattern," ");}}
for(var i=0;i<document.images.length;i++){idx=document.images[i].src.indexOf("/attachments/");if(idx>=0){document.images[i].src="/attachments/"+document.images[i].src.substr(idx+13);}}}
if(window.addEventListener){window.addEventListener("load",fixKbLinks,false);}
else if(window.attachEvent){window.attachEvent("onload",fixKbLinks);}