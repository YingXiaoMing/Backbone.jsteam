define(function(require) {
	var _=require('underscore');
	_.templateSettings = {
		    interpolate: /\$\{(.+?)\}/g,
		    evaluate: /<%([\s\S]+?)%>/g
	};
	input = require('text!templates/config/input.tpl'),
	textarea = require('text!templates/config/textarea.tpl'),
	textareasplit = require('text!templates/config/textarea-split.tpl'), 
	checkbox = require('text!templates/config/checkbox.tpl'), 
	option = require('text!templates/config/option.tpl'),
	moduleStyle = require('text!templates/config/moduleStyle.tpl'), //模块样式
	containerWidth = require('text!templates/config/containerWidth.tpl'), //容器宽度
	width = require('text!templates/config/width.tpl'), //图片宽高	
	linkOpen = require('text!templates/config/linkOpen.tpl'), //链接属性
	picStyle = require('text!templates/config/picStyle.tpl'), //轮播多图-展示方式
	productNavStyle = require('text!templates/config/productNavStyle.tpl'), //产品导航样式
	productType = require('text!templates/config/productType.tpl'), //产品分类
	productTypeItem = require('text!templates/config/productTypeItem.tpl'), //产品分类自定义项
	select = require('text!templates/config/select.tpl');
	button = require('text!templates/config/button.tpl');
	tree = require('text!templates/comp/navbar/tree.tpl');
	editor = require('text!templates/config/editor.tpl');
	picture = require('text!templates/config/picture.tpl');
	carouselPhoto = require('text!templates/config/carouselPhoto.tpl');
	disStyle = require('text!templates/config/disStyle.tpl');//展示样式
	productSearch = require('text!templates/config/productSearch.tpl');//产品搜索
	keyword = require('text!templates/config/keyword.tpl');//产品搜索
	imageEffects = require('text!templates/config/imageEffects.tpl');//图片特效
	block2 = require('text!templates/config/block2.tpl');
	fontsize = require('text!templates/config/fontsize.tpl');
	fontfamily = require('text!templates/config/fontfamily.tpl');
	backgroundRepeat = require('text!templates/config/backgroundRepeat.tpl');
	height = require('text!templates/config/height.tpl');
  images = require('text!templates/config/images.tpl');
  opacity = require('text!templates/config/opacity.tpl');
  padding = require('text!templates/config/padding.tpl');
    borderStyle = require('text!templates/config/borderStyle.tpl');
	photoGroup = require('text!templates/config/photoGroup.tpl');
	moreCusUrl = require('text!templates/config/moreCusUrl.tpl');
	photoGroupStyle = require('text!templates/config/photoGroupStyle.tpl');
	productStyleBox = require('text!templates/config/productStyleBox.tpl');
	onlineService = require('text!templates/config/onlineService.tpl');
	loginButton = require('text!templates/config/loginButton.tpl');
	guestbookButton = require('text!templates/config/guestbookButton.tpl');
	backTopIcon = require('text!templates/config/backTopIcon.tpl');
	quickLayoutShow = require('text!templates/config/quickLayoutShow.tpl');
	backgroundAttachment = require('text!templates/config/backgroundAttachment.tpl'); 
	public = require('text!templates/config/public.tpl');
	currentTime = require('text!templates/config/currentTime.tpl') //测试  当前时间
	button_style = require('text!templates/config/button_style.tpl');  
	product_navigation = require('text!templates/config/product_navigation.tpl');  
	color = require('text!templates/config/color.tpl');  
	product_parameter = require('text!templates/config/product_parameter.tpl');  
	formonline_sup = require('text!templates/config/formonline_sup.tpl'); 
	Rubikscube = require('text!templates/config/Rubikscube.tpl'); 
	notic_choice_panel = require('text!templates/config/notic_choice_panel.tpl'); 
	article = require('text!templates/config/article.tpl');//文章列表
	cartButton = require('text!templates/config/cartButton.tpl');     //  购物车样式
	groupText = require('text!templates/config/groupText.tpl');
	specifyProduct = require('text!templates/config/specifyProduct.tpl');
	//onlineVideo = require('text!templates/config/onlineVideo.tpl');
	//flash = require('text!templates/config/flash.tpl');
	uploadImage = require('text!templates/config/uploadImage.tpl');
	uploadFiles = require('text!templates/config/uploadFiles.tpl');
	menu = require('text!templates/config/menu.tpl');
	return {
		input : _.template(input),
		textarea : _.template(textarea),
		textareasplit : _.template(textareasplit),
		checkbox : _.template(checkbox),
		select : _.template(select),
		option : _.template(option),
		moduleStyle : _.template(moduleStyle),
		containerWidth : _.template(containerWidth),
		width : _.template(width),
		linkOpen : _.template(linkOpen),
		picStyle : _.template(picStyle),
		productNavStyle : _.template(productNavStyle),
		productType : _.template(productType),
		productTypeItem : _.template(productTypeItem),
		button : _.template(button),
		tree : _.template(tree),
		editor : _.template(editor),
		picture : _.template(picture),
		carouselPhoto : _.template(carouselPhoto),
		disStyle : _.template(disStyle),
		productSearch : _.template(productSearch),
		keyword : _.template(keyword),
		imageEffects : _.template(imageEffects),
		block2 : _.template(block2),
		fontsize: _.template(fontsize),
		backgroundRepeat: _.template(backgroundRepeat),
		height: _.template(height),
		images: _.template(images),
		opacity: _.template(opacity),
		padding: _.template(padding),
		borderStyle: _.template(borderStyle),
		photoGroup: _.template(photoGroup),
		fontfamily : _.template(fontfamily),
		moreCusUrl : _.template(moreCusUrl),
		photoGroupStyle : _.template(photoGroupStyle),
		productStyleBox : _.template(productStyleBox),
		onlineService : _.template(onlineService),
		loginButton : _.template(loginButton),
		guestbookButton : _.template(guestbookButton),
		backTopIcon : _.template(backTopIcon),
		quickLayoutShow : _.template(quickLayoutShow),
		backgroundAttachment : _.template(backgroundAttachment),
		public : _.template(public),
		button_style: _.template(button_style),  //按钮样式
		product_navigation: _.template(product_navigation),  //产品导航-模块
		color: _.template(color),  //颜色
		product_parameter: _.template(product_parameter),  //展示参数
		formonline_sup: _.template(formonline_sup),  //在线表单-高级-选项排列方式
		Rubikscube: _.template(Rubikscube),  //魔方多图
		notic_choice_panel: _.template(notic_choice_panel),  //滚动公告-公告图标
		article: _.template(article),  //滚动公告-公告图标
		groupText: _.template(groupText),  //滚动公告-公告图标
		cartButton: _.template(cartButton),  //购物车样式
		specifyProduct: _.template(specifyProduct),
		//onlineVideo: _.template(onlineVideo),
		//flash: _.template(flash)

		specifyProduct: _.template(specifyProduct),

		specifyProduct: _.template(specifyProduct),
		uploadImage: _.template(uploadImage),//上传图片
		uploadFiles: _.template(uploadFiles),//上传附件
		menu: _.template(menu)
	};
});