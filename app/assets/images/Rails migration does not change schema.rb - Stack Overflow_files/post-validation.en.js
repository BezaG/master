StackExchange.postValidation=function(){function e(e,t,n){var u=e.find('input[type="submit"]:visible'),c=u.length&&u.is(":enabled");c&&u.attr("disabled",!0),i(e),r(e,t,n),o(e),s(e),l(e);var f=function(){1!=t||e.find(g).length?(a(e),c&&u.attr("disabled",!1)):setTimeout(f,250)};f()}function t(t,i,r,a,o){e(t,i,a);var s,l=function(e){if(e.success)if(o)o(e);else{var n=window.location.href.split("#")[0],a=e.redirectTo.split("#")[0];0==a.indexOf("/")&&(a=window.location.protocol+"//"+window.location.hostname+a),s=!0,window.location=e.redirectTo,n.toLowerCase()==a.toLowerCase()&&window.location.reload(!0)}else e.captchaHtml?StackExchange.captcha.init(e.captchaHtml,l):e.errors?f(e.errors,t,i,r):t.find('input[type="submit"]:visible').parent().showErrorMessage(e.message)};t.submit(function(){if(t.find("#answer-from-ask").is(":checked"))return!0;var e=t.find(b);return"[Edit removed during grace period]"==$.trim(e.val())?(d(e,["Comment reserved for system use. Please use an appropriate comment."],u()),!1):(n(),StackExchange.navPrevention&&StackExchange.navPrevention.stop(),t.find('input[type="submit"]:visible').parent().addSpinner(),StackExchange.helpers.disableSubmitButton(t),setTimeout(function(){$.ajax({"type":"POST","dataType":"json","data":t.serialize(),"url":t.attr("action"),"success":l,"error":function(){var e;switch(r){case"question":e="An error occurred submitting the question.";break;case"answer":e="An error occurred submitting the answer.";break;case"edit":e="An error occurred submitting the edit.";break;case"tags":e="An error occurred submitting the tags.";break;case"post":default:e="An error occurred submitting the post."}t.find('input[type="submit"]:visible').parent().showErrorMessage(e)},"complete":function(){StackExchange.helpers.removeSpinner(),s||StackExchange.helpers.enableSubmitButton(t)}})},0),!1)})}function n(){for(var e=0;e<x.length;e++)clearTimeout(x[e]);x=[]}function i(e){var t=e.find(m);t.length&&t.blur(function(){x.push(setTimeout(function(){var n=t.val(),i=$.trim(n);if(0==i.length)return h(e,t),void 0;var r=t.data("min-length");if(r&&i.length<r)return d(t,[function(e){return 1==e.minLength?"Title must be at least "+e.minLength+" character.":"Title must be at least "+e.minLength+" characters."}({"minLength":r})],u()),void 0;var a=t.data("max-length");return a&&i.length>a?(d(t,[function(e){return 1==e.maxLength?"Title cannot be longer than "+e.maxLength+" character.":"Title cannot be longer than "+e.maxLength+" characters."}({"maxLength":a})],u()),void 0):($.ajax({"type":"POST","url":"/posts/validate-title","data":{"title":n},"success":function(n){n.success?h(e,t):d(t,n.errors.Title,u())},"error":function(){h(e,t)}}),void 0)},S))})}function r(e,t,n){var i=e.find(v);i.length&&i.blur(function(){x.push(setTimeout(function(){var r=i.val(),a=$.trim(r);if(0==a.length)return h(e,i),void 0;if(5==t){var o=i.data("min-length");return o&&a.length<o?d(i,[function(e){return"Wiki Body must be at least "+e.minLength+" characters. You entered "+e.actual+"."}({"minLength":o,"actual":a.length})],u()):h(e,i),void 0}(1==t||2==t)&&$.ajax({"type":"POST","url":"/posts/validate-body","data":{"body":r,"oldBody":i.prop("defaultValue"),"isQuestion":1==t,"isSuggestedEdit":n},"success":function(t){t.success?h(e,i):d(i,t.errors.Body,u())},"error":function(){h(e,i)}})},S))})}function a(e){var t=e.find(g);if(t.length){var n=t.parent().find("input#tagnames");n.blur(function(){x.push(setTimeout(function(){var i=n.val(),r=$.trim(i);return 0==r.length?(h(e,t),void 0):($.ajax({"type":"POST","url":"/posts/validate-tags","data":{"tags":i,"oldTags":n.prop("defaultValue")},"success":function(n){n.success?h(e,t):d(t,n.errors.Tags,u())},"error":function(){h(e,t)}}),void 0)},S))})}}function o(e){var t=e.find(b);t.length&&t.blur(function(){x.push(setTimeout(function(){var n=t.val(),i=$.trim(n);if(0==i.length)return h(e,t),void 0;var r=t.data("min-length");if(r&&i.length<r)return d(t,[function(e){return 1==e.minLength?"Your edit summary must be at least "+e.minLength+" character.":"Your edit summary must be at least "+e.minLength+" characters."}({"minLength":r})],u()),void 0;var a=t.data("max-length");return a&&i.length>a?(d(t,[function(e){return 1==e.maxLength?"Your edit summary cannot be longer than "+e.maxLength+" character.":"Your edit summary cannot be longer than "+e.maxLength+" characters."}({"maxLength":a})],u()),void 0):(h(e,t),void 0)},S))})}function s(e){var t=e.find(y);t.length&&t.blur(function(){x.push(setTimeout(function(){var n=t.val(),i=$.trim(n);if(0==i.length)return h(e,t),void 0;var r=t.data("min-length");if(r&&i.length<r)return d(t,[function(e){return"Wiki Excerpt must be at least "+e.minLength+" characters; you entered "+e.actual+"."}({"minLength":r,"actual":i.length})],u()),void 0;var a=t.data("max-length");return a&&i.length>a?(d(t,[function(e){return"Wiki Excerpt cannot be longer than "+e.maxLength+" characters; you entered "+e.actual+"."}({"maxLength":a,"actual":i.length})],u()),void 0):(h(e,t),void 0)},S))})}function l(e){var t=e.find(w);t.length&&t.blur(function(){x.push(setTimeout(function(){var n=t.val(),i=$.trim(n);return 0==i.length?(h(e,t),void 0):/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,20}$/i.test(n)?(h(e,t),void 0):(d(t,["This email does not appear to be valid."],c()),void 0)},S))})}function u(){var e=$("#sidebar, .sidebar").first().width()||270;return{"position":{"my":"left top","at":"right center"},"css":{"max-width":e,"min-width":e},"closeOthers":!1}}function c(){var e=$("#sidebar, .sidebar").first().width()||270;return{"position":{"my":"left top","at":"right center"},"css":{"min-width":e},"closeOthers":!1}}function f(e,t,n,i){if(e){var r=function(){var n=0;d(t.find(m),e.Title,u())?n++:h(t,t.find(m)),d(t.find(v),e.Body,u())?n++:h(t,t.find(v)),d(t.find(g),e.Tags,u())?n++:h(t,t.find(g)),d(t.find(b),e.EditComment,u())?n++:h(t,t.find(b)),d(t.find(y),e.Excerpt,u())?n++:h(t,t.find(y)),d(t.find(w),e.Email,c())?n++:h(t,t.find(w));var r=t.find(".general-error"),a=e.General&&e.General.length>0;if(a||n>0){if(!r.length){var o=t.find('input[type="submit"]:visible');o.before('<div class="general-error-container"><div class="general-error"></div><br class="cbt" /></div>'),r=t.find(".general-error")}if(a)d(r,e.General,{"position":"inline","css":{"float":"left","margin-bottom":"10px"},"closeOthers":!1,"dismissable":!1});else{h(t,r);var s;switch(i){case"question":s=function(e){return 1==e.specificErrorCount?"Your question couldn't be submitted. Please see the error above.":"Your question couldn't be submitted. Please see the errors above."}({"specificErrorCount":n});break;case"answer":s=function(e){return 1==e.specificErrorCount?"Your answer couldn't be submitted. Please see the error above.":"Your answer couldn't be submitted. Please see the errors above."}({"specificErrorCount":n});break;case"edit":s=function(e){return 1==e.specificErrorCount?"Your edit couldn't be submitted. Please see the error above.":"Your edit couldn't be submitted. Please see the errors above."}({"specificErrorCount":n});break;case"tags":s=function(e){return 1==e.specificErrorCount?"Your tags couldn't be submitted. Please see the error above.":"Your tags couldn't be submitted. Please see the errors above."}({"specificErrorCount":n});break;case"post":default:s=function(e){return 1==e.specificErrorCount?"Your post couldn't be submitted. Please see the error above.":"Your post couldn't be submitted. Please see the errors above."}({"specificErrorCount":n})}r.text(s)}}else t.find(".general-error-container").remove();var l;p()&&($("#sidebar").animate({"opacity":.4},500),l=setInterval(function(){p()||($("#sidebar").animate({"opacity":1},500),clearInterval(l))},500));var f;t.find(".validation-error").each(function(){var e=$(this).offset().top;(!f||f>e)&&(f=e)});var x=function(){for(var e=0;3>e;e++)t.find(".message").animate({"left":"+=5px"},100).animate({"left":"-=5px"},100)};if(f){var S=$(".review-bar").length;f=Math.max(0,f-(S?125:30)),$("html, body").animate({"scrollTop":f},x)}else x()},a=function(){1!=n||t.find(g).length?r():setTimeout(a,250)};a()}}function d(e,t,i){var r;if(!(t&&0!=t.length&&e.length&&$("html").has(e).length))return!1;if(r=1==t.length?t[0]:"<ul><li>"+t.join("</li><li>")+"</li></ul>",r&&r.length>0){var a=e.data("error-popup");if(a&&a.is(":visible")){var o=e.data("error-message");if(o==r)return!0;a.fadeOutAndRemove()}var s=StackExchange.helpers.showMessage(e,r,i);return s.find("a").attr("target","_blank"),e.addClass("validation-error"),e.data("error-popup",s),e.data("error-message",r),s.click(n),!0}return!1}function h(e,t){if(!t||0==t.length)return!1;var n=t.data("error-popup");return n&&n.is(":visible")&&n.fadeOutAndRemove(),t.removeClass("validation-error"),t.removeData("error-popup"),t.removeData("error-message"),e.find(".validation-error").length||e.find(".general-error-container").remove(),!0}function p(){var e=!1,t=$("#sidebar, .sidebar").first();if(!t.length)return!1;var n=t.offset().left;return $(".message").each(function(){var t=$(this);return t.offset().left+t.outerWidth()>n?(e=!0,!1):void 0}),e}var m="input#title",v="textarea.wmd-input:first",g=".tag-editor",b="input[id^=edit-comment]",y="textarea#excerpt",w="input#m-address",x=[],S=250;return{"initOnBlur":e,"initOnBlurAndSubmit":t,"showErrorsAfterSubmission":f,"getSidebarPopupOptions":u}}();