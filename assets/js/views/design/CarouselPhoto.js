define(function (require) {
    var $ = require('jquery');
    var _ = require('underscore');
    var EventHelper = require("helper/EventHelper");
    var ItemModel = require("models/ItemModel");
    var BaseView = require("views/design/BaseView");
    var ModalView = require("views/ModalView");
    var main = require('text!templates/config/main.tpl');
    var configTemplates = require('templates/config/template');
    var globalObj = require("app/global");
    var Template = require("text!templates/basic/carouselPhotoModal.tpl");
    require("nestable/nestable");
    require("css!nestable/nestable.css");
    var CarouselPhoto = BaseView.extend({
        editHandler: function (obj) {
            var thiz = this;
            var itemSeparator = globalObj.itemSeparator;
            var modal = new ModalView({
                animate: true,
                title: '编辑' + this.model.get("title"),
                content: _.template(Template)(),
                model : this.model
            });

            modal.open(function () {

            }, function () {

            });
        },
        initialize: function (options) {
            this.constructor.__super__.initialize.call(this, options);
        }
    });

    return {
        createView: function (attriutes, pel, templateTpl, isRender, htmlnr) {
            return new CarouselPhoto({
                model: new ItemModel(attriutes),
                templateTpl: templateTpl,
                pel: pel,
                isRender: isRender,
                htmlnr: htmlnr
            });
        }
    };
});