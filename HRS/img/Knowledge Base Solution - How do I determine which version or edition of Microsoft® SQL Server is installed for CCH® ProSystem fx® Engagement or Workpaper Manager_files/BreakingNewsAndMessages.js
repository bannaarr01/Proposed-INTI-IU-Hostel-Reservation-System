function escapeHtml(unsafe){var temp=unsafe.replace(/"/g,"&quot;");temp=temp.replace(/'/g,"");return temp}
function GetNotificationsData(){var notificationParams=new Object();notificationParams.dataType="json";notificationParams.url="/notifications/api/Notifications/Search/All";notificationParams.error=function(request,textStatus){$("#breaking-news").hide();var authenticatedUser=window.siAuthUser!=""?true:false;if(authenticatedUser){$("#notifications").show();}
else{$("#notifications").hide();}};notificationParams.success=function(data,textStatus){if(data!=null&&data.length>0){var authenticatedUser=window.siAuthUser!=""?true:false;var ul="";var notificationCount=0;var breakingNews=false;var breakingNewsText="";var marketingSlider=false;var marketingSliderText="";var cookies=document.cookie;for(var i=0;i<data.length;i++){if(NotificationValid(data[i])){if(data[i].Notifications_Type=="Breaking News"){breakingNews=true;var breakingNewsElement=$("<p>"+data[i].Message+"</p>");breakingNewsElement.find('a').each(function(index,element){var link=$(element).attr('href');$(element).attr('onclick',"trackBreakingNewsLink('"+link+"')");});breakingNewsText+="<div id=\"notificationItem_"+data[i].Id+"\" class=\"breaking-news-slide\">";if(authenticatedUser){breakingNewsText+="<a class=\"close-btn\" href=\"javascript:dismissBreakingNews('notificationItem_"+data[i].Id+"',"+data[i].Id+")\" title=\"Dismiss News Flash\"></a>";}
else{}
breakingNewsText+=breakingNewsElement[0].outerHTML;breakingNewsText+="</div>";}
else if(data[i].Notifications_Type=="Marketing Slider"){marketingSlider=true;var backgroundImage;if(data[i].Background_Name==null||data[i].Background_Name==""){backgroundImage='DarkBlueAbstract.jpg'}
else{backgroundImage=data[i].Background_Name}
marketingSliderText+="<div class=\"slide\" style=\"background-image:url('images/slider/"+backgroundImage+"');\">";marketingSliderText+="<h3 class=\"caption\">";marketingSliderText+=data[i].Message;marketingSliderText+="</h3>";marketingSliderText+="</div>";}}}
if(breakingNews){if($('#breaking-news-slider').hasClass('slick-initialized')){$('#breaking-news-slider').slick('unslick');}
$("#breaking-news-slider h2").after(breakingNewsText);$("#breaking-news").show();$('#breaking-news-slider').slick({autoplay:true,slidesToShow:1,dots:false,pauseOnHover:true,autoplaySpeed:6000,vertical:true,slide:'.breaking-news-slide',arrows:false});$(document).uitooltip({items:$("#breaking-news-slider").find("p"),content:function(){return $(this).html();},show:{delay:400},open:function(event,ui){if(typeof(event.originalEvent)==='undefined'){return false;}
var $id=$(ui.tooltip).attr('id');$('div.ui-tooltip').not('#'+$id).remove();},close:function(event,ui){ui.tooltip.hover(function(){$(this).stop(true).fadeTo(400,1);},function(){$(this).fadeOut('400',function(){$(this).remove();});});}});}
else{$("#breaking-news").hide();}
if(marketingSlider){if($("#feature-slider").length>0){$("#feature-slider").append(marketingSliderText);$("#feature-slider").not('.slick-initialized').slick({autoplay:true,slidesToShow:1,dots:true,pauseOnHover:true,autoplaySpeed:6000,});$("#feature-slider .slide a:not(.internal)").attr("target","_blank");$("#feature-slider .slide a").each(function(index,element){var link=$(element).attr('href');$(element).attr('onclick',"trackMarketingCampaignLink('"+link+"')");});}}}
else{$("#breaking-news").hide();}};$.ajax(notificationParams);}
trackBreakingNewsLink=function(url){ga('send',{hitType:'event',eventCategory:'Notfications',eventAction:'Breaking News Link',eventLabel:url});}
trackMarketingCampaignLink=function(url){ga('send',{hitType:'event',eventCategory:'Notfications',eventAction:'Marketing Campaign Link',eventLabel:url});}
function getNewsContent(){return $(this).html();}
function NotificationValid(notificationItem){if(notificationItem.Product_Id==null){return true;}
else{return false;}}
function dismissBreakingNews(objID,notificationID){$("#"+objID).remove();makeAjaxPostCall("/notifications/api/Notifications/Dismiss/"+notificationID);}
function dismissBreakingNewsCookie(objID,notificationID){$("#"+objID).hide();updateBreakingNewsDismissalCookie(notificationID);}
function updateBreakingNewsDismissalCookie(notificationID){document.cookie="NotificationId"+notificationID+"=Dismissed";}
function BreakingNewsWasDismissed(cookieName){var ca=document.cookie.split(';');for(var i=0;i<ca.length;i++){var c=ca[i];while(c.charAt(0)==' ')c=c.substring(1);if(c.indexOf(cookieName)==0)return true;}
return false;}
function makeAjaxPostCall(url){var sendParams=new Object();sendParams.dataType="json";sendParams.method="POST";sendParams.url=url;sendParams.error=function(request,textStatus){notification("An error occurred dismissing a Notification.");};sendParams.success=function(data,textStatus){GetNotificationsData();};$.ajax(sendParams);}
$(document).ready(function(){GetNotificationsData();});