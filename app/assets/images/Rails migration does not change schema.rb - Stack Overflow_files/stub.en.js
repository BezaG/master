"use strict";function MSIsPlayback(){try{return parent&&parent.WebPlayer}catch(e){return!1}}function prepareEditor(e){var t=e.postfix||"",n=function(){setTimeout(function(){StackExchange.editor.initIfShown(e)},1)};if(!e.onDemand)return StackExchange.using("editor",n),void 0;for(var i="bold-button italic-button spacer1 link-button quote-button code-button image-button spacer2 olist-button ulist-button heading-button hr-button spacer3 undo-button redo-button".split(" "),o=$('<ul id="wmd-button-row'+t+'" class="wmd-button-row" />').appendTo(".wmd-button-bar"),a=0,s=0;s<i.length;s++){var r=i[s],c=/spacer/.test(r),l=$("<li id='wmd-"+r+t+"' />").prop("className","wmd-"+(c?"spacer":"button")).css("left",25*s).appendTo(o);$("<span />").css("background-position",a+"px -20px").appendTo(l),c||(a-=20)}var u=!1;$("#wmd-input, #title, #tagnames, #edit-comment, #m-address, #display-name").one("focus click keydown",function(){if(!u){u=!0;var t=function(){o.remove(),e.autoShowMarkdownHelp&&(e.immediatelyShowMarkdownHelp=!0),n()};o.addSpinner({"float":"right"}),StackExchange.using("editor",t)}})}if(window.StackExchange={},!MSIsPlayback()&&top!=self)throw top.location.replace(document.location),$(function(){$("head").add("body").remove()}),alert("For security reasons, framing is not allowed; click OK to remove the frames."),new Error;if(StackExchange.init=function(){function e(){$(document).on("click",".convert-to-post",function(e){e.preventDefault();var t=$(this).attr("data-confirm");if(!t||confirm(t)){var n=$("<form method='post'/>").attr("action",$(this).attr("href")).appendTo("body");n.append($("<input type='hidden' name='fkey' />").attr("value",$(this).attr("data-fkey"))).submit()}})}function t(){function e(e){StackExchange.options.user.fkey!==e&&(StackExchange.options.user.fkey=e,$("input[name=fkey]").val(e))}function t(e,t){try{localStorage.setItem(i,e+","+t)}catch(n){}}function n(){var e=localStorage.getItem(i);if(!e)return{"time":0};var t=e.split(/,/);return{"fkey":t[0],"time":parseInt(t[1],10)}}var i="se:fkey";$(window).on("storage",function(t){t=t.originalEvent,t.key==i&&t.newValue&&e(t.newValue.split(/,/)[0])});try{var o=StackExchange.options.user.fkey,a=n();a.fkey!==o&&(StackExchange.options.serverTime>a.time?t(o,StackExchange.options.serverTime):e(a.fkey))}catch(s){}}function n(){if(StackExchange.options.timingsGuid&&window.performance&&window.performance.timing){var e=window.performance.timing,t=e.navigationStart,n={"guid":StackExchange.options.timingsGuid,"Info":StackExchange.options.timingsInfo};for(var i in e)0!==e[i]&&(n[i]=0===e[i]?null:e[i]-t);$.post("/client-timings",n)}}function i(){var e,t=$("#hot-network-questions");if(t.length&&(e=t.find(".js-show-more")).length){var n=t.find(".js-hidden");e.click(function(){return n.show(),e.remove(),!1});var i=$("#mainbar").height(),o=$("#sidebar").height()+550;i>o&&(n.each(function(){return o+=$(this).show().height(),i>o}),0==n.filter(":hidden").length&&e.remove())}}var o=function(e){if(!window.jQuery){if("complete"!=document.readyState)return setTimeout(function(){o(e)},1e3),void 0;var t=document.createElement("div");t.id="noscript-padding";var n=document.createElement("div");n.id="noscript-warning",n.innerHTML=function(e){return e.siteName+" requires external JavaScript from another domain, which is blocked or failed to load."}({"siteName":e}),document.body.insertBefore(t,document.body.firstChild),document.body.appendChild(n)}},a=function(){var e=function(e){e?$(e).trigger("popupClose").fadeOutAndRemove():($("#lightbox:not(.no-esc-remove), .message-dismissable, .popup:not(.no-auto-close), .share-tip, .esc-remove").fadeOutAndRemove(),$(".esc-hide").fadeOut(),window.genuwine&&genuwine.isVisible()&&genuwine.click(),StackExchange.topbar&&StackExchange.topbar.hideAll(),$("#lightbox:not(.no-esc-remove), .message-dismissable, .popup:not(.no-auto-close), .share-tip, .esc-remove, .esc-hide").trigger("popupClose",{"closeTrigger":"esc"}))};$(document).keyup(function(t){27==t.which&&e()}),$("body").mousedown(function(e){var t=$(e.target);if(!t.closest(".ac_results, .popup").length){if(!t.closest(".popup").length){if(1!=e.which)return;$(".popup:not(.no-auto-close), #lightbox").fadeOutAndRemove().trigger("popupClose",{"closeTrigger":"click outside"})}t.closest(".share-tip").length||$(".share-tip").fadeOutAndRemove().trigger("popupClose",{"closeTrigger":"click outside"}),t.closest(".wmd-prompt-dialog").length||$(".wmd-prompt-dialog, .wmd-prompt-background").fadeOutAndRemove().trigger("popupClose",{"closeTrigger":"click outside"})}}),$(document).bind("closePopups",function(t){e(t.selectorToClose)})},s=function(){var e,t=$("#hlinks"),n=$("#search input[name=q]"),i=n.width(),o=2.5*i,a="expand",s=100,r=function(e){n.queue(a,e)},c=function(){n.dequeue(a)},l=!1,u=!("placeholder"in document.createElement("input"));u&&!StackExchange.options.isMobile&&(""==n[0].value&&(n[0].value="search"),n.bind({"focus":function(){"search"==this.value&&(this.value="")}})),n.keydown(function(i){return l||i.keyCode<46&&8!=i.keyCode&&32!=i.keyCode?!0:(l=!0,clearTimeout(e),n.clearQueue(a),r(function(e){n[0].placeholder="",t.fadeOut(s,e)}),r(function(e){n.animate({"width":o,"max-width":o},s,e)}),r(function(){0==n.parent().find(".search-prompt").length&&n.before('<span class="search-prompt">search:</span>')}),3==n.queue(a).length&&c(),void 0)}).focusout(function(){e=setTimeout(function(){r(function(e){n.parent().find(".search-prompt").remove(),e()}),r(function(e){n.animate({"width":i,"max-width":i},s,e)}),r(function(e){u&&""==n[0].value&&(n[0].value="search"),n[0].placeholder="search",t.fadeIn(s,e)}),3==n.queue(a).length&&c(),l=!1},200)}),$("#search").keydown(function(e){return 13==e.which&&e.ctrlKey&&n.val()?(window.open("/search?q="+encodeURIComponent(n.val()),"_newtab"),!1):void 0}).find("input[name=q]").keyup(function(e){27==e.which&&$(this).blur()})};return function(r){StackExchange.options=r,r.serverTimeOffsetSec=r.serverTime-(new Date).getTime()/1e3,o(r.site.name),$.ajaxSetup({"cache":!1}),StackExchange.init.createJqueryExtensions(),r.enableLogging=r.user.isEmployee&&"undefined"!=typeof console&&"undefined"!=typeof console.log,$(function(){a(),s(),t(),e(),StackExchange.using(StackExchange.options.user.isAnonymous?"anonymous":"loggedIn",function(){StackExchange.initialized.resolve()},!0,r.fullPostfix);var o=StackExchange.options.styleCodeAdditionalLang;o&&StackExchange.ifUsing("prettify",function(){return StackExchange.loadJsFile("third-party/prettify/additional-langs/"+o)}),StackExchange.ready(function(){genuwine.init(r.user.accountId||null,r.user.inboxUnviewedCount,r.user.notificationsUnviewedCount),r.user.messages&&StackExchange.notify.showMessages(r.user.messages,r.isMobile),r.site.globalAuthDisabled||(!r.site.isChildMeta&&r.user.isAnonymous&&gauth.checkStackAuth(r.stackAuthUrl),gauth.informStackAuth(r.stackAuthUrl)),r.enableUserHovercards&&StackExchange.usermenu.init(),StackExchange.tagPreferences?StackExchange.tagPreferences.init():StackExchange.tagmenu.init(),r.timingsGuid&&$(window).load(function(){setTimeout(n,50)}),$("*[data-tracker]").track(),i()})})}}(),StackExchange.debug={"log":function(){},"init":function(){this.log=function(e){$(function(){var t=$("#debug-messages");t.length||(t=$("<div id='debug-messages' style='text-align:left;position:fixed;top:50px;left:50px;z-index:1000;background:white;border:2px solid black;width:300px;padding:10px;' />").append($("<span style='cursor:pointer;color:#999'>(close debug messages)</span>").click(function(){$("#debug-messages").remove()})).appendTo("body")),$("<div style='margin-top:10px' />").text(e).appendTo(t)})}}},StackExchange.initialized=$.Deferred(),StackExchange.ready=function(e){StackExchange.initialized.done(e)},window.serq)for(var i=0;i<window.serq.length;i++)StackExchange.ready(window.serq[i]);!function(){var e,t={"anonymous":"full-anon.js","loggedIn":"full.js","prettify":"prettify-full.js","pseudoModerator":"moderator.js","inlineEditing":"full.js","editor":"wmd.js","autocomplete":"third-party/jquery.autocomplete.min.js","tagAutocomplete":"tageditor.js","tagEditor":"tageditornew.js","tagSuggestions":"tagsuggestions.js","mobile":"mobile.js","help":"help.js","inlineTagEditing":"inline-tag-editing.js","mathjaxEditing":"mathjax-editing.js","revisions":"revisions.js","mockups":"external-editor.js","schematics":"external-editor.js","review":"review.js","translation":"full.js","gps":"full-anon.js","postValidation":"post-validation.js","exploreQuestions":"explore-qlist.js","eventCharts":"events.js","virtualKeyboard":"virtual-keyboard.js"},n={},i={},o={},a={},s={},r=function(e,t){return function(n){var i=e[n];return i||(i=e[n]=t(n)),i}},c=function(e){var t,n,i=o[e],a=$.Deferred(),s=$.when(a);if(i)for(var t=0;t<i.length;t++)n=i[t].call(null),n&&$.isFunction(n.promise)&&(s=$.when(s,n));return a.resolve(),s},l=function(){if(!e){var t=$("script[src]").filter(function(){return/stub.*\.js/.test($(this).attr("src"))}).first();0==t.length?(StackExchange.debug.log("couldn't figure out location of stub.js"),e="/content/js/"):e=t.attr("src").replace(/\/stub.*\.js.*$/,"/")}return e},u=function(e){var t=s["js/"+e];return t?"?v="+t:(StackExchange.debug.log("no cache breaker for "+e),"")},d=function(e){return e&&StackExchange.options.locale&&-1==e.indexOf("third-party")&&(e=e.replace(/^(.*)(.js)(\?.*)?$/,"$1."+StackExchange.options.locale+"$2$3")),e},h=function(e,t){var n=$.Deferred(),i=document.createElement("script");return i.async="async",i.src=t?e:d(e),i.onload=i.onreadystatechange=function(e,t){(!i.readyState||/loaded|complete/.test(i.readyState))&&(t?n.reject():n.resolve())},i.onerror=function(){n.reject()},$("head")[0].appendChild(i),n.promise()},f=function(e){var n=t[e];return n?p(n):$.Deferred().reject().promise()},p=r(i,function(e){return h(l()+e+u(d(e)))}),g=r(n,function(e){function t(){return(i=StackExchange[e])?(c(e).done(function(){n.resolve()}),void 0):o>0?(o--,StackExchange.debug.log("retrying "+e),setTimeout(t,20),void 0):(StackExchange.debug.log("object "+e+" not available although file was loaded"),n.reject(),void 0)}var n=$.Deferred(),i=StackExchange[e],o=3;return i?n.resolve():f(e).done(t).fail(n.reject),n.promise()}),m=$.Deferred(),v=function(e,n,i,o){if(!i&&!m.isResolved())return m.done(function(){v(e,n)}),void 0;if(i)for(var a in t)t.hasOwnProperty(a)&&(t[a]=t[a].replace(/^(full(?:-anon)?).js$/,"$1"+(o||"")+".js"));var s=g(e);return i?m.resolve():s=$.when(s,StackExchange.initialized),s.done(function(){n()}).fail(function(){StackExchange.debug.log("failed to provide object "+e)}),s};v.setCacheBreakers=function(e){for(var t in e)e.hasOwnProperty(t)&&(s[t]=e[t])};var b=function(e,t,n){if("undefined"!=typeof n){if(a["u_"+n])return;a["u_"+n]=!0}if(StackExchange[e])return t(),void 0;var i=o[e];i||(i=o[e]=[]),i.push(t)};StackExchange.using=v,StackExchange.ifUsing=b,StackExchange.loadJsFile=function(e,t){return h(l()+e,t)}}(),String.prototype.formatUnicorn=function(){var e=this.toString();if(!arguments.length)return e;var t=typeof arguments[0],n="string"==t||"number"==t?Array.prototype.slice.call(arguments):arguments[0];for(var i in n)e=e.replace(new RegExp("\\{"+i+"\\}","gi"),n[i]);return e},String.prototype.truncate=function(e,t){var n=this.toString();return e&&n.length>e&&(n=n.substr(0,e)+t),n},String.prototype.splitOnLast=function(e){var t=this.lastIndexOf(e);return 0>t?[this]:[this.substr(0,t),this.substr(t)]},String.prototype.contains=function(e){return this.indexOf(e)>-1},StackExchange.init.createJqueryExtensions=function(){var e=StackExchange.helpers;$.extend($.expr[":"],{"working":function(e){var t=$(e).data("working");return"undefined"!=typeof t&&t},"data":function(e,t,n){var i=n[3],o=$(e).data(i);switch(typeof o){case"undefined":return!1;case"boolean":return o;case"object":return null!==o}return!0},"containsCI":function(e,t,n){return jQuery(e).text().toUpperCase().indexOf(n[3].toUpperCase())>=0}}),$.fn.extend({"working":function(e){return this.each(function(){$(this).data("working",e)})},"track":function(){return this.each(function(){var e=$(this),t=e.is("a[href]")?e:e.find("a[href]"),n=e.data("tracker");t.each(function(){var e=this.href.splitOnLast("#"),t=e[0];t+=(t.contains("?")?"&":"?")+n+(e[1]||""),this.href=t})})},"fadeOutAndRemove":function(){return this.each(function(){var e=$(this);e.fadeOut("fast",function(){e.trigger("removing").remove()})})},"charCounter":function(t){return this.each(function(){var n=t.target?$(t.target):$(this).parents("form").find("span.text-counter"),i=this,o=function(){var e=t.min,o=t.max,a=t.setIsValid||function(){},s=i.value?i.value.replace(/\r\n/g,"\n").length:0,r=s>.8*o?"supernova":s>.6*o?"hot":s>.4*o?"warm":"cool",c="";if(0==s)0==e?(c=function(e){return 1==e.max?"enter up to "+e.max+" character":"enter up to "+e.max+" characters"}({"max":o}),a(!0)):(c=function(e){return 1==e.min?"enter at least "+e.min+" character":"enter at least "+e.min+" characters"}({"min":e}),a(!1));else if(e>s)c=function(e){return 1==e.count,e.count+" more to go..."}({"count":e-s}),a(!1);else{var l=o-s;c=l>=0?function(e){return 1==e.count?e.count+" character left":e.count+" characters left"}({"count":l}):function(e){return 1==e.count?"too long by "+e.count+" character":"too long by "+e.count+" characters"}({"count":Math.abs(l)}),a(o>=s)}n.text(c),n.hasClass(r)||n.removeClass("supernova hot warm cool").addClass(r)};$(this).bind("blur focus keyup paste charCounterUpdate",e.DelayedReaction(o,100,{"sliding":!0}).trigger)})},"selectRange":function(e,t){return this.each(function(){if(this.setSelectionRange)this.focus(),this.setSelectionRange(e,t);else if(this.createTextRange){var n=this.createTextRange();n.collapse(!0),n.moveEnd("character",t),n.moveStart("character",e),n.select()}})},"addSpinner":function(t){return this.each(function(){e.addSpinner(this,t)})},"addSpinnerAfter":function(t){return this.each(function(){$(this).after(e.getSpinnerImg(t))})},"addSpinnerBefore":function(t){return this.each(function(){$(this).before(e.getSpinnerImg(t))})},"removeSpinner":function(){return this.each(function(){$(this).find("img.ajax-loader").remove()})},"showErrorMessage":function(t,n){return this.each(function(){e.showErrorMessage(this,t,n)})},"showErrorPopup":function(t,n){return this.each(function(){e.showErrorMessage(this,t,n)})},"showInfoMessage":function(t,n){return this.each(function(){e.showInfoMessage(this,t,n)})},"center":function(e){e=e||{};var t=this.parent();"static"===t.css("position")&&(t=t.offsetParent());var n=t.offset(),i=$(window),o=e.top||Math.max((i.height()-this.outerHeight())/2+i.scrollTop()-n.top+(e.dy||0),0);this.css("position","absolute"),this.css("top",o+"px");var a=Math.max(20,(i.width()-this.outerWidth())/2+i.scrollLeft()-n.left);this.css("left",a+"px");var s="calc(50% - "+this.outerWidth()/2+"px)";return this.css("left",s),this.css("left","-webkit-"+s),this},"helpOverlay":function(){return e.bindHelpOverlayEvents(this),this},"hideHelpOverlay":function(){return e.hideHelpOverlay(this),this},"enable":function(){return 0==arguments.length||arguments[0]?this.removeAttr("disabled").css("cursor","pointer").removeClass("disabled-button"):this.attr("disabled","disabled").css("cursor","default").addClass("disabled-button"),this},"disable":function(){return this.enable(!1)},"loadPopup":function(t){var n=this;return n.addSpinnerAfter({"padding":"0 3px"}),$.ajax({"type":"GET","url":t.url,"dataType":"html","data":t.data,"success":function(e){var i=$(e).elementNodesOnly();i.find(".popup-actions-cancel, .popup-close a").click(function(){StackExchange.helpers.closePopups(".popup"),t.lightbox&&$("#lightbox").fadeOutAndRemove()}),i.find("input:radio[disabled=disabled] + label.action-label").addClass("action-disabled"),t.hideDescriptions&&i.find("ul.action-list > li:not(.action-selected) .action-desc").hide();var o=i.find("input:radio:not(.action-subform input)");o.closest("li").bind("hide-action",function(){var e=$(this),n=".action-subform"+(t.hideDescriptions?", .action-desc":"");e.removeClass("action-selected").find(n).slideUp("fast")}).bind("show-action",function(){var e=$(this);e.hasClass("action-selected")||(e.siblings(".action-selected").trigger("hide-action"),e.addClass("action-selected").find(".action-subform").slideDown("fast",function(){if(t.subformShow&&t.subformShow($(this)),t.subformFocusInput){var e=$(this).find("input[type=text], textarea").not(".actual-edit-overlay").eq(0);e.length&&e.focus()}}),t.hideDescriptions&&e.find(".action-desc").slideDown("fast"),t.actionSelected&&t.actionSelected(e),i.find(".popup-submit").enable())}),o.click(function(){$(this).closest("li").trigger("show-action")}),i.appendTo(n.parent()),t.loaded&&t.loaded(i);var a=function(){};if(t.subformShow){var s=i.find("li.action-selected .action-subform");s.length>0&&(a=function(){s.each(function(){t.subformShow($(this))})})}if(t.lightbox){var r=$('<div id="lightbox"/>').appendTo($("body")).css("height",$(document).height()).fadeIn("fast");i.css("z-index",r.css("z-index")+1)}t.dontCenter||i.center().fadeIn("fast",a)},"error":function(e){var t=e.responseText||"Unable to load popup - please try again";n.parent().showErrorMessage(t,{"transient":409==e.status})},"complete":e.removeSpinner}),n},"asyncLoad":function(e){return e=$.extend({"callback":null,"cache":{}},e),this.each(function(){var t=".async-load",n=$(this),i=n.find(t);n.is(t)&&(i=i.add(n)),i.each(function(){var t=$(this),n=t.data("load-url")||"";if(n&&!t.is(":working")){t.working(!0).addSpinner();var i=function(n){t.html(n).removeClass("async-load").mathjax();var i=t.data("after-load")||"";if(i||e.callback){for(var o,a=i.split("."),s=0;s<a.length;s++)o=(o||window)[a[s]];o=o||e.callback,"function"==typeof o&&o(t)}},o=e.cache[n];o?window.setTimeout(function(){i(o)},0):$.ajax({"type":"GET","url":n,"dataType":"html"}).done(function(t){e.cache[n]=t,i(t)}).fail(function(){t.removeSpinner().showErrorMessage("An error has occurred; please try again")})}})})},"mathjax":function(){return this.each(function(){"undefined"!=typeof MathJax&&MathJax.Hub.Typeset(this)})},"elementNodesOnly":function(){return this.filter(function(){return 1===this.nodeType})},"outerHTML":function(){return $("<div>").append(this.eq(0).clone()).html()}})},StackExchange.helpers=function(){function e(e,t,n){for(var i=0;i<n.length;i++){var o=n[i];try{if(/\*/.test(o))for(var a=0;4>a;a++){var s=o.replace(/\*/g,c[a]),r=e.css(s);t.css(s,r)}else t.css(o,e.css(o))}catch(l){}}}function t(t,n,i,o){if(t.is(":visible")){var a=$.browser.msie?0:.4;if(!i())return t.css("opacity",1).css("filter","").removeClass("edit-field-overlayed"),void 0;t.css("opacity",a+(o?.2:0)),t.addClass("edit-field-overlayed");var s=t.prev(".actual-edit-overlay");if(0==s.length){var c=$.trim(r(t).text()),l=t.width(),u=t.height();s=t.clone().prop("className","actual-edit-overlay").attr("name",null).attr("id",null).attr("disabled","disabled").css({"position":"absolute","backgroundColor":"white","color":"black","-webkit-text-fill-color":"black","opacity":1,"width":l,"height":u}),s.is("textarea,input")?(s.val(c),e(n,s,["line-height"])):s.text(c).css("line-height",u+"px").prepend("&nbsp;"),e(n,s,["font-family","font-size","text-align"]),e(t,s,["border-*-style","border-*-color","border-*-width"]),t.css({"zIndex":1,"position":"relative"}),s.insertBefore(t);var d=t.offset().top-s.offset().top;if(0!=d){var h=parseInt(s.css("margin-top")),f=h+d;t.is("textarea")||(f=parseInt(s.prevAll(":visible").eq(0).css("margin-bottom"))+h),s.css("margin-top",f)}var p=t.offset().left-s.offset().left;if(0!=p){var g=parseInt(s.css("margin-left"));s.css("margin-left",g+p)}}}}function n(e,t){$(e).find("input[type='submit']").prop("disabled",t)}var i,o,a,s=function(){var e=function(){i=o=null,$("body").removeAttr("style")},t=$("div.popup");t.each(function(e,t){var n=$(t).find(".handle");n.length&&(n.css({"cursor":"move"}),n.unbind("mousedown").bind("mousedown",function(e){var n=$(t).offset();o={"x":n.left-e.pageX,"y":n.top-e.pageY},i=$(t);var a=i.offset();i.offset(a).offset(a),$("body").attr("style","cursor:move"),e.preventDefault()}))}),a||(a=!0,$(document).on("mousemove",function(e){if(i){var t=e.pageY+o.y,n=e.pageX+o.x;i.offset({"top":t,"left":n})}}).on("keypress",e).on("mouseup",e))},r=function(e){return e.parent().find("span.edit-field-overlay")},c=["left","right","top","bottom"],l={"bindMovablePopups":s,"genericBindOverlayEvents":function(e,n,i){StackExchange.options.isMobile||n.bind("keydown contextmenu",function(){l.hideHelpOverlay(e)}).focus(function(){t(e,n,i,!0)}).on("blur change",function(){t(e,n,i)}).each(function(){t(e,n,i)})},"bindHelpOverlayEvents":function(e){e.each(function(){var e=$(this);l.genericBindOverlayEvents(e,e,function(){return""===e.val()})})},"hideHelpOverlay":function(e){e.css("opacity",1),e.css("filter",""),e.removeClass("edit-field-overlayed")},"onClickDraftSave":function(e){return $(e).click(function(e){if(null!=StackExchange.cardiologist){e.preventDefault();var t=this.href;return StackExchange.cardiologist.ensureDraftSaved(function(){window.onbeforeunload=null,window.location.href=t}),!1}}),!0},"showMessage":function(e,t,n){if(e=$(e),e.length){var i={"position":"inside","dismissable":!0,"type":"error","closeOthers":!0},o=$.extend({},i,n),a=9;o.closeOthers&&$(".message").fadeOutAndRemove();var s=$('<div class="message"><div class="message-inner"><div class="message-text"></div></div></div>'),r=s.find(".message-inner"),c=s.find(".message-text");if(s.addClass("message-"+o.type),c.html(t),o.dismissable&&(s.addClass("message-dismissable"),c.css("padding-right","35px"),r.prepend($("<div />",{"title":"close this message (or hit Esc)","class":"message-close","text":"×"})),s.click(function(e){$(e.target).is("a")||s.fadeOutAndRemove()})),o.css&&s.css(o.css),"inside"==o.position||"inline"==o.position||o.tip||(o.tip=o.position.my),o.tip&&r.addClass("message-tip message-tip-"+o.tip.replace(" ","-")),"inline"==o.position)e.append(s);else if("inside"==o.position)s.css("position","absolute"),e.append(s);else{s.css("position","absolute");var l=e.offsetParent();l.append(s);var u,d=e.position(),h=e.outerWidth(!0),f=e.outerHeight(!0),p=s.outerWidth(),g=s.outerHeight();switch(o.position.at){case"top left":u={"top":0,"left":0};break;case"top center":u={"top":0,"left":h/2};break;case"top right":u={"top":0,"left":h};break;case"right top":u={"top":0,"left":h};break;case"right center":u={"top":f/2,"left":h};break;case"right bottom":u={"top":f,"left":h};break;case"bottom right":u={"top":f,"left":h};break;case"bottom center":u={"top":f,"left":h/2};break;case"bottom left":u={"top":f,"left":0};break;case"left bottom":u={"top":f,"left":0};break;case"left center":u={"top":f/2,"left":0};break;case"left top":u={"top":0,"left":0}}var m;switch(o.position.my){case"left top":m={"top":0,"left":-a};break;case"top left":m={"top":-a,"left":0};break;case"top right":m={"top":-a,"left":p};break;case"right top":m={"top":0,"left":p+a};break;case"right bottom":m={"top":g,"left":p+a};break;case"bottom right":m={"top":g+a,"left":p};break;case"bottom left":m={"top":g+a,"left":0};break;case"left bottom":m={"top":g,"left":-a}}var v={"left":d.left+u.left-m.left,"top":d.top+u.top-m.top};s.css({"top":v.top,"left":v.left})}return s.fadeIn(),o.transient&&setTimeout(function(){s.fadeOutAndRemove()},Math.max(2500,40*t.length)),o.removing&&s.on("removing",o.removing),s}},"showErrorMessage":function(e,t,n){var i={"position":"inside","type":"error"},o=$.extend({},i,n);return this.showMessage(e,t,o)},"showErrorPopup":function(e,t,n){return this.showErrorMessage(e,t,n)},"showInfoMessage":function(e,t,n){var i={"position":"inside","transient":!0,"type":"info"},o=$.extend({},i,n);return this.showMessage(e,t,o)},"removeMessages":function(){$(".message").fadeOutAndRemove()},"addSpinner":function(e,t){$(e).append(l.getSpinnerImg(t))},"getSpinnerImg":function(e){var t=$("<img />",{"class":"ajax-loader","src":"/content/img/progress-dots.gif","title":"loading...","alt":"loading..."});return e&&t.css(e),t},"removeSpinner":function(){$("img.ajax-loader").remove()},"closePopups":function(e){var t=$.Event("closePopups");t.selectorToClose=e,$(document).trigger(t)},"enableSubmitButton":function(e){n(e,!1)},"disableSubmitButton":function(e){n(e,!0)},"loadTicks":function(e){var t;t=e?e.find(".edit-block"):$(".edit-block"),0==t.find("input[name=i1l]").length&&(t.data("loading-ticks")||(t.data("loading-ticks",!0),$.ajax({"url":"/questions/ticks","cache":!1,"success":function(e){t.append("<input type='hidden' name='i1l' value='"+e+"' />")},"complete":function(){t.data("loading-ticks",!1)}})))},"showFancyOverlay":function(e){e=e||{};var t=$("#overlay-header"),n=e.message||"",i=$.browser.msie?{"background":"#fff","opacity":0}:{};e.showClose!==!1&&(n+='<br><a class="close-overlay">close this message</a>'),t.html(n).css(i).animate({"opacity":"1","height":"show"},"slow",e.complete).find(".close-overlay").click(function(){t.animate({"opacity":"0","height":"hide"},"fast")})},"DelayedReaction":function(e,t,n){n=n||{};var i,o,a=n.always,s=function(){i=null,e.apply(null,o)};return{"trigger":function(){if(o=arguments,a&&a.apply(null,o),i){if(!n.sliding)return;clearTimeout(i),i=setTimeout(s,t)}else i=setTimeout(s,t)},"cancel":function(){i&&(clearTimeout(i),i=null)}}},"fireAndForget":function(e){$.ajax({"type":"POST","url":e,"async":!0})}};return l}(),StackExchange.switchMobile=function(e){$.post("/mobile/"+e,{"returnurl":window.location.href},function(e){window.location.href=e})},StackExchange.switchLocale=function(e,t){$.post("/locale/"+e,{"returnurl":t},function(e){window.location=e})},jQuery.cookie=function(e,t,n){if("undefined"==typeof t){var i=null;if(document.cookie&&""!=document.cookie)for(var o=document.cookie.split(";"),a=0;a<o.length;a++){var s=jQuery.trim(o[a]);if(s.substring(0,e.length+1)==e+"="){i=decodeURIComponent(s.substring(e.length+1));break}}return i}n=n||{},null===t&&(t="",n.expires=-1);var r="";if(n.expires&&("number"==typeof n.expires||n.expires.toUTCString)){var c;"number"==typeof n.expires?(c=new Date,c.setTime(c.getTime()+24*n.expires*60*60*1e3)):c=n.expires,r="; expires="+c.toUTCString()}var l=n.path?"; path="+n.path:"",u=n.domain?"; domain="+n.domain:"",d=n.secure?"; secure":"";document.cookie=[e,"=",encodeURIComponent(t),r,l,u,d].join("")},jQuery.expr[":"].regex=function(e,t,n){var i=n[3].split(","),o=/^(data|css):/,a={"method":i[0].match(o)?i[0].split(":")[0]:"attr","property":i.shift().replace(o,"")},s="ig",r=new RegExp(i.join("").replace(/^\s+|\s+$/g,""),s);return r.test(jQuery(e)[a.method](a.property))},$.extend($.expr[":"],{"containsExact":function(e,t,n){return $.trim(e.innerHTML.toLowerCase())===n[3].toLowerCase()},"containsExactCase":function(e,t,n){return $.trim(e.innerHTML)===n[3]},"containsRegex":function(e,t,n){var i=/^\/((?:\\\/|[^\/])+)\/([mig]{0,3})$/,o=i.exec(n[3]);return RegExp(o[1],o[2]).test($.trim(e.innerHTML))}}),$.extend({"URLEncode":function(e){var t="",n=0;e=e.toString();for(var i=/(^[a-zA-Z0-9_.]*)/;n<e.length;){var o=i.exec(e.substr(n));if(null!=o&&o.length>1&&""!=o[1])t+=o[1],n+=o[1].length;else{if(" "==e[n])t+="+";else{var a=e.charCodeAt(n),s=a.toString(16);t+="%"+(s.length<2?"0":"")+s.toUpperCase()}n++}}return t},"URLDecode":function(e){for(var t,n=e,i=/(%[^%]{2})/;null!=(m=i.exec(n))&&m.length>1&&""!=m[1];)b=parseInt(m[1].substr(1),16),t=String.fromCharCode(b),n=n.replace(m[1],t);return n}}),function(e){e.fn.typeWatch=function(t){function n(t,n){var i=e(t.el).val();(i.length>o.captureLength&&i.toUpperCase()!=t.text||n&&i.length>o.captureLength)&&(t.text=i.toUpperCase(),t.cb(i))}function i(t){if("TEXT"==t.type.toUpperCase()||"TEXTAREA"==t.nodeName.toUpperCase()){var i={"timer":null,"text":e(t).val().toUpperCase(),"cb":o.callback,"el":t,"wait":o.wait};o.highlight&&e(t).focus(function(){this.select()});var a=function(e){var t=i.wait,o=!1;13==e.keyCode&&"TEXT"==this.type.toUpperCase()&&(t=1,o=!0);var a=function(){n(i,o)};clearTimeout(i.timer),i.timer=setTimeout(a,t)};e(t).keydown(a).bind("paste",null,function(e){e.which||a(this)}).bind("input",null,function(e){e.which||a(this)})}}var o=e.extend({"wait":750,"callback":function(){},"highlight":!0,"captureLength":2},t);return this.each(function(){i(this)})}}(jQuery),function(e){function t(t){var n;return t&&t.constructor==Array&&3==t.length?t:(n=/rgb\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*\)/.exec(t))?[parseInt(n[1]),parseInt(n[2]),parseInt(n[3])]:(n=/rgb\(\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*\)/.exec(t))?[2.55*parseFloat(n[1]),2.55*parseFloat(n[2]),2.55*parseFloat(n[3])]:(n=/#([a-fA-F0-9]{2})([a-fA-F0-9]{2})([a-fA-F0-9]{2})/.exec(t))?[parseInt(n[1],16),parseInt(n[2],16),parseInt(n[3],16)]:(n=/#([a-fA-F0-9])([a-fA-F0-9])([a-fA-F0-9])/.exec(t))?[parseInt(n[1]+n[1],16),parseInt(n[2]+n[2],16),parseInt(n[3]+n[3],16)]:(n=/rgba\(0, 0, 0, 0\)/.exec(t))?i.transparent:i[e.trim(t).toLowerCase()]}function n(n,i){var o;do{if(o=e.curCSS(n,i),""!=o&&"transparent"!=o||e.nodeName(n,"body"))break;i="backgroundColor"}while(n=n.parentNode);return t(o)}e.each(["backgroundColor","borderBottomColor","borderLeftColor","borderRightColor","borderTopColor","color","outlineColor"],function(i,o){e.fx.step[o]=function(e){e.colorInit||(e.start=n(e.elem,o),e.end=t(e.end),e.colorInit=!0),e.elem.style[o]="rgb("+[Math.max(Math.min(parseInt(e.pos*(e.end[0]-e.start[0])+e.start[0]),255),0),Math.max(Math.min(parseInt(e.pos*(e.end[1]-e.start[1])+e.start[1]),255),0),Math.max(Math.min(parseInt(e.pos*(e.end[2]-e.start[2])+e.start[2]),255),0)].join(",")+")"}});var i={"transparent":[255,255,255]}}(jQuery),!function(e,t,n){"function"==typeof define?define(n):"undefined"!=typeof module?module.exports=n():t[e]=n(t)}("klass",this,function(e){function t(e){return a.call(n(e)?e:function(){},e,1)}function n(e){return typeof e===r}function i(e,t,n){return function(){var i=this.supr;this.supr=n[l][e];var o={}.fabricatedUndefined,a=o;try{a=t.apply(this,arguments)}finally{this.supr=i}return a}}function o(e,t,o){for(var a in t)t.hasOwnProperty(a)&&(e[a]=n(t[a])&&n(o[l][a])&&c.test(t[a])?i(a,t[a],o):t[a])}function a(e,t){function i(){}function s(){this.initialize?this.initialize.apply(this,arguments):(t||u&&r.apply(this,arguments),d.apply(this,arguments))}i[l]=this[l];var r=this,c=new i,u=n(e),d=u?e:this,h=u?{}:e;return s.methods=function(e){return o(c,e,r),s[l]=c,this},s.methods.call(s,h).prototype.constructor=s,s.extend=a,s[l].implement=s.statics=function(e,t){return e="string"==typeof e?function(){var n={};return n[e]=t,n}():e,o(this,e,r),this},s}e=e||this;var s=e.klass,r="function",c=/.*/,l="prototype";return t.noConflict=function(){return e.klass=s,this},t}),StackExchange.gps=function(){function e(e,t,n,i){t=t||{};var o=null;StackExchange.options&&StackExchange.options.user&&(t.user_type=StackExchange.options.user.userType,o=StackExchange.options.user.ab);var a={"evt":e,"properties":t,"now":(new Date).getTime()};o&&(a.ab=o),StackExchange._gps_track.push(a),i&&i()}return StackExchange._gps_track=[],{"track":e,"sendPending":function(e){e&&e()}}}();