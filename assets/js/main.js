require.config({
	baseUrl : "assets/js/lib/",
	urlArgs : "v=2016110820",
	shim : {
		backbone : {
			deps : [ 'underscore', 'jquery' ],
			exports : 'Backbone'
		},
		underscore : {
			exports : '_'
		},
		bootstrap : {
			deps : [ 'jquery' ]
		},
		jqueryui: {
            deps: ['jquery']
        },
        baidueditor: {
        	deps: ['ueditor/ueditor.config', 'css!ueditor/themes/default/css/ueditor']
        },
        jqueryartDialog : {
        	deps : ['jquery','artDialog/plugins/iframeTools','css!artDialog/skins/black.css']
        },
        jquerycontextmenu : {
        	deps : ['jquery']
        },
		ueditorOffline: {
			deps: ['ueditor_offline/ueditor.config']
		},
		toastr: {
			deps: ['jquery']
		}
	},
	paths : {
		app : "..",
		ueditorOffline : "./ueditor_offline/ueditor.all",
		collections : "../collections",
		data : "../data",
		models : "../models",
		helper : "../helper",
		templates : "../templates",
		views : "../views",
		comdata : "../comdata",
		htmldata : "../htmldata",
		artDialog : "artDialog",
		toastr: "toastr/toastr"
	}
});

require([ 'app/app' ], function(app) {
	app.initialize();
});
