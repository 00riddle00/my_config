'use strict';var og=function(a){this.TA="number"==typeof a?0<a?1:0>a?-1:null:null==a?null:a?-1:1};og.prototype.OP=function(a,b){var c=0,e=0,f=!1;a=bc(a,b).split(fc);for(b=0;b<a.length;b++){var g=a[b];dc.test(bc(g,void 0))?(c++,e++):ec.test(g)?f=!0:cc.test(bc(g,void 0))?e++:gc.test(g)&&(f=!0)}return 0==e?f?1:0:.4<c/e?-1:1};og.prototype.lP=function(a,b){return this.hX(this.OP(a,b))};og.prototype.hX=function(a){return-1==(0==a?this.TA:a)?"rtl":"ltr"};
og.prototype.mark=function(){switch(this.TA){case 1:return"\u200e";case -1:return"\u200f";default:return""}};if("undefined"!=typeof angular){var pg=angular.module("chrome_18n",[]);chrome.runtime&&chrome.runtime.getManifest&&chrome.runtime.getManifest().default_locale&&pg.directive("angularMessage",function(){return{restrict:"E",replace:!0,controller:["$scope",function(a){this.it=this.Fd=null;a.dirForText=r(function(a){this.Fd||(this.Fd=chrome.i18n.getMessage("@@bidi_dir")||"ltr");this.it||(this.it=new og("rtl"==this.Fd));return this.it.lP(a||"")},this)}],compile:function(a,b){b=b.key;var c=null,e=document.createElement("amr");
b&&!b.match(/^\d+$/)&&(b=chrome.i18n.getMessage(b),null==b&&e.setAttribute("id","missing"));if(b){var f=chrome.i18n.getMessage(b+"_ph"),c=[];if(null!=f)for(c=f.split("\ue000"),f=0;f<c.length;++f)c[f]=c[f].replace(/^{{(.*)}}$/,'<amrp dir="{{dirForText($1)}}">{{$1}}</amrp>');c=chrome.i18n.getMessage(b,c)}else e.setAttribute("r","nokey");c?e.innerHTML=c:(e.setAttribute("tl","false"),e.innerHTML=a.html());a.replaceWith(e)}}})};var qg=/^[\w+/]+[=]{0,2}$/;var rg=function(a,b,c){a.timeOfStartCall=(new Date).getTime();var e=c||h,f=e.document,g;(g=(g=(g=(e||h).document.querySelector("script[nonce]"))&&g.getAttribute("nonce"))&&qg.test(g)?g:void 0)&&(a.nonce=g);if("help"==a.flow){var k=xa("document.location.href",e);!a.helpCenterContext&&k&&(a.helpCenterContext=k.substring(0,1200));k=!0;if(b&&JSON&&JSON.stringify){var p=JSON.stringify(b);(k=1200>=p.length)&&(a.psdJson=p)}k||(b={invalidPsd:!0})}b=[a,b,c];e.GOOGLE_FEEDBACK_START_ARGUMENTS=b;c=a.serverUri||
"//www.google.com/tools/feedback";if(k=e.GOOGLE_FEEDBACK_START)k.apply(e,b);else{var e=c+"/load.js?",w;for(w in a)b=a[w],null!=b&&!Fa(b)&&(e+=encodeURIComponent(w)+"="+encodeURIComponent(b)+"&");a=f.createElement("script");g&&a.setAttribute("nonce",g);a.src=e;f.body.appendChild(a)}};m("userfeedback.api.startFeedback",rg,void 0);var sg=function(a,b,c,e,f,g){this.userEmail=a;this.qF=b;this.aQ=c;this.YX=e;this.modelName=f;this.receiverVersion=g};var tg=chrome.i18n.getMessage("4163185390680253103"),ug=chrome.i18n.getMessage("492097680647953484"),vg=chrome.i18n.getMessage("2575016469622936324"),wg=chrome.i18n.getMessage("128276876460319075"),xg=chrome.i18n.getMessage("3326722026796849289"),yg=chrome.i18n.getMessage("1018984561488520517"),zg=chrome.i18n.getMessage("8205999658352447129"),Ag=chrome.i18n.getMessage("5723583529370342957"),Bg=chrome.i18n.getMessage("1550904064710828958"),Cg=chrome.i18n.getMessage("5014364904504073524"),Dg=chrome.i18n.getMessage("2194670894476780934"),
Eg=chrome.i18n.getMessage("6614468912728530636"),Fg=chrome.i18n.getMessage("5910595154486533449"),Gg=chrome.i18n.getMessage("5363086287710390513"),Hg=chrome.i18n.getMessage("244647017322945605"),Ig=chrome.i18n.getMessage("5375576275991472719"),Jg=chrome.i18n.getMessage("4592127349908255218"),Kg=chrome.i18n.getMessage("843316808366399491"),Lg=chrome.i18n.getMessage("5699813974548050528"),Mg=chrome.i18n.getMessage("8515148417333877999"),Ng=chrome.i18n.getMessage("1636686747687494376"),Og=chrome.i18n.getMessage("4148300086676792937"),
Pg=chrome.i18n.getMessage("3219866268410307919"),Qg=chrome.i18n.getMessage("9211708838274008657"),Rg=chrome.i18n.getMessage("8706273405040403641"),Sg=chrome.i18n.getMessage("4756056595565370923"),Tg=chrome.i18n.getMessage("7876724262035435114"),Ug=chrome.i18n.getMessage("5485620192329479690"),Vg=chrome.i18n.getMessage("6963873398546068901"),Wg=chrome.i18n.getMessage("3567591856726172993"),Xg=chrome.i18n.getMessage("3239956785410157548");var Yg=function(a,b){this.iB=b;this.l=a;this.l.top=a;this.EB=[];this.Uy=!1;this.h6();this.b6();this.c6();this.d6();this.e6();this.cQ=bb();this.l.userEmail="";chrome.identity.getProfileUserInfo(function(a){this.l.userEmail=a.email;this.un()}.bind(this));this.l.yourAnswerText=Xg;this.l.language=chrome.i18n&&chrome.i18n.getUILanguage?chrome.i18n.getUILanguage():chrome.runtime.getManifest().default_locale;this.l.requestLogsInProgress=!1};
Yg.prototype.Gs=function(a,b){a.closeWindow=function(){window.close()};a.closeDialog=function(){b.hide()}};Yg.prototype.Gs.$inject=["$scope","$mdDialog"];Yg.prototype.b6=function(){this.EB=[{value:"Bug",desc:tg},{value:"FeatureRequest",desc:ug},{value:"MirroringQuality",desc:vg},{value:"Discovery",desc:wg},{value:"Other",desc:xg}];this.l.feedbackTypes=this.EB};var Zg=function(a,b){this.id=a;this.desc=b;this.text=0==a?b:a+" ("+b+")"};d=Yg.prototype;
d.Ay=function(a){for(var b=[],c=1;c<arguments.length;c++)b.push(new Zg(c,arguments[c]));b.push(new Zg(0,arguments[0]));return b};d.h6=function(){this.l.videoSmoothnessRatings=this.Ay(Dg,yg,zg,Ag,Bg,Cg);this.l.videoQualityRatings=this.Ay(Dg,Eg,Fg,Gg,Hg,Ig);this.l.audioQualityRatings=this.Ay(Dg,Jg,Kg,Lg,Mg,Ng)};
d.c6=function(){this.l.includeFineLogs=!0;this.l.feedbackType="Bug";this.l.sendFeedback=r(this.t2,this);this.l.cancel=r(this.NN,this);this.l.attachLogsClick=r(this.Rz,this);this.l.viewLogs=r(this.X7,this)};d.d6=function(){this.l.$watchGroup("videoSmoothness videoQuality audioQuality feedbackDescription comments feedbackType".split(" "),r(this.dO,this));this.l.sufficientFeedback=!1};d.e6=function(){this.l.$watch("attachLogs",r(this.Rz,this));this.l.attachLogs=!0};
d.NN=function(){this.l.feedbackDescription&&!confirm(Og)||window.close()};d.dO=function(){var a=this.l.feedbackType;this.l.sufficientFeedback="MirroringQuality"==a?this.l.videoSmoothness||this.l.videoQuality||this.l.audioQuality||this.l.comments:"Discovery"==a?this.l.visibleInSetup||this.l.comments:!!this.l.feedbackDescription};
d.t2=function(){if(this.l.sufficientFeedback){var a=this.l.feedbackType,b="";"MirroringQuality"==a?(this.l.videoSmoothness&&(b+="\nVideo Smoothness: "+this.l.videoSmoothness),this.l.videoQuality&&(b+="\nVideo Quality: "+this.l.videoQuality),this.l.audioQuality&&(b+="\nAudio: "+this.l.audioQuality),this.l.projectedContentUrl&&(b+="\nProjected Content/URL: "+this.l.projectedContentUrl),this.l.comments&&(b+="\nComments: "+this.l.comments)):"Discovery"==a?(this.l.visibleInSetup&&(b+="\nChromecast Visible in Setup: "+
this.l.visibleInSetup),this.l.hasNetworkSoftware&&(b+="\nUsing VPN/proxy/firewall/NAS Software: "+this.l.hasNetworkSoftware),this.l.networkDescription&&(b+="\nNetwork Description: "+this.l.networkDescription),this.l.comments&&(b+="\nComments: "+this.l.comments)):b=this.l.feedbackDescription;this.s2("Type: "+a+"\n\n"+b)}};
d.s2=function(a){this.l.sendDialogText=Pg;this.l.okButton=Wg;this.l.feedbackSent=!1;this.iB.show({locals:{Qea:this.l.feedbackSent,rka:this.l.sendDialogText,hY:this.l.okButton},scope:this.l,preserveScope:!0,bindToController:!0,template:'<md-dialog id="feedback-confirmation"><md-dialog-content><div id="send-feedback-text">{{sendDialogText}}</div><md-dialog-actions><md-button class="md-raised md-primary"ng-disabled="!feedbackSent" ng-click="closeWindow()">{{okButton}}</md-button></md-dialog-actions></md-dialog-content></md-dialog>',
controller:this.Gs});this.VH(a,t())};d.VH=function(a,b){var c=t();!this.l.requestLogsInProgress||5E3<c-b?this.xP(a):setTimeout(r(this.VH,this),1E3,a,b)};
d.xP=function(a){var b=0,c=r(function(a,b){b?a.resolve(!0):(this.l.sendDialogText=Sg,this.un(),a.reject(Error("Failed to send")))},this),e=chrome.declarativeWebRequest?"MrTeamfood":"MRStable",f=r(function(){b++;var f=J(),k=new sg(this.l.userEmail||"",this.l.logs||"",this.l.externalLogs||"",this.l.mirrorLogUrl||"",this.l.modelName||"",this.l.receiverVersion||""),p=Ka(c,f),w=chrome.runtime.getManifest();rg({productId:85561,bucket:e,flow:"submit",serverUri:"https://www.google.com/tools/feedback",allowNonLoggedInFeedback:!0,
locale:w.default_locale,enableAnonymousFeedback:!k.userEmail,report:{description:a},callback:p},{version:w.version,description:w.description,user_email:k.userEmail||"NA",logs:k.qF||"NA",external_logs:k.aQ||"NA",device_model:k.modelName||"NA",receiver_version:k.receiverVersion||"NA",dash_report_url:k.YX||"NA"});return f.promise},this);(new Sf(f,1E4,4)).Ar(2).start().then(function(){this.l.sendDialogText=Rg;this.l.feedbackSent=!0;this.un()},function(){this.l.sendDialogText=Qg;this.l.feedbackSent=!0;
this.un()},this)};
d.Rz=function(){this.l.logs="";this.l.externalLogs=null;this.l.mirrorLogUrl="";this.l.modelName="";this.l.receiverVersion="";this.l.attachLogs&&(this.l.requestLogsInProgress=!0,chrome.runtime.sendMessage(new mg(this.cQ,"retrieve_log_data"),r(function(a){this.l.requestLogsInProgress=!1;this.l.logs=a.logs||"no extension";this.l.mirrorLogUrl=a.castStreamingLogs||"";if((a=a.device)&&a.model&&(this.l.modelName=a.model,this.l.receiverVersion=a.version||"",!this.Uy)){var b=bb();this.Uy=!0;this.l.externalLogs=
jg(a.ip,b,r(this.xZ,this))}},this)))};
d.X7=function(){this.l.logsHeader=Tg;this.l.sendLogs=Ug;this.l.fineLogsWarning=Vg;this.l.okButton=Wg;this.iB.show({locals:{Sba:this.l.attachLogs,qF:this.l.logs,gga:this.l.includeFineLogs,$ga:this.l.logsHeader,ska:this.l.sendLogs,Sea:this.l.fineLogsWarning,hY:this.l.okButton},scope:this.l,preserveScope:!0,bindToController:!0,clickOutsideToClose:!0,template:'<md-dialog><md-dialog-content id="logs-dialog"><div class="subheading">{{logsHeader}}</div><div ng-show="includeFineLogs && attachLogs"id="feedback-fine-log-warning" class="informative">{{fineLogsWarning}}</div><pre>{{logs}}</pre><div class="send-logs"><md-checkbox type="checkbox" ng-model="attachLogs"ng-change="attachLogsClick()"><span>{{sendLogs}}</span></md-checkbox></div><md-dialog-actions><md-button class="md-raised md-primary"ng-click="closeDialog()">{{okButton}}</md-button></md-dialog-actions></md-dialog-content></md-dialog>',controller:this.Gs})};
d.xZ=function(a,b){this.Uy=!1;this.l.externalLogs="error"==a?null:b;this.l.attachLogs||(this.l.externalLogs=null);this.un()};d.un=function(){this.l.$$phase||this.l.$apply()};angular.module("feedbackApp","chrome_18n material.components.button material.components.checkbox material.components.dialog material.components.input material.components.radioButton".split(" ")).controller("FeedbackCtrl",["$scope","$mdDialog",Yg]);m("ng.safehtml.googSceHelper.isGoogHtmlType",function(a){return a&&a.qm?!0:!1},void 0);m("ng.safehtml.googSceHelper.isCOMPILED",function(){return!0},void 0);m("ng.safehtml.googSceHelper.unwrapAny",function(a){if(a instanceof sc)return tc(a);if(a instanceof vc)return wc(a);if(a instanceof pc)return qc(a);if(a instanceof mc)return nc(a);if(a instanceof yc)return zc(a);throw Error();},void 0);
m("ng.safehtml.googSceHelper.unwrapGivenContext",function(a,b){if("html"==a)return wc(b);if("resourceUrl"==a||"templateUrl"==a)return tc(b);if("url"==a)return b instanceof sc?tc(b):qc(b);if("css"==a)return nc(b);if("js"==a)return zc(b);throw Error();},void 0);
