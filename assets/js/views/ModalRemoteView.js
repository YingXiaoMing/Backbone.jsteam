define(function(require) {
	var $ = require("jquery");
	var _ = require("underscore");
	var Backbone = require('backbone');
	var tpl = require("text!templates/modal2.tpl");
	var globalObj = require("app/global");
	require("jqueryui");
	var Modal = Backbone.View.extend({
		className : 'modal',
		events : {
			'click .close' : function(event) {
				event.preventDefault();

				this.trigger('cancel');

				if (this.options.content
						&& this.options.content.trigger) {
					this.options.content
							.trigger('cancel', this);
				}
			},
			'click .cancel' : function(event) {
				event.preventDefault();

				this.trigger('cancel');

				if (this.options.content
						&& this.options.content.trigger) {
					this.options.content
							.trigger('cancel', this);
				}
			},
			'click .ok' : function(event) {
				event.preventDefault();

				var obj = this.trigger('ok');

				if (this.options.content
						&& this.options.content.trigger) {
					this.options.content.trigger('ok', this);
				}

				if (this.options.okCloses) {
					if(this.closed){
						this.close();
					}
				}
			},
			'keypress' : function(event) {
				if (this.options.enterTriggersOk
						&& event.which == 13) {
					event.preventDefault();

					var obj = this.trigger('ok');

					if (this.options.content
							&& this.options.content.trigger) {
						this.options.content
								.trigger('ok', this);
					}

					if (this.options.okCloses) {
						this.close();
					}
				}
			}
		},

		/**
		 * Creates an instance of a Bootstrap Modal
		 * 
		 * @see http://twitter.github.com/bootstrap/javascript.html#modals
		 * 
		 * @param {Object}
		 *            options
		 * @param {String|View}
		 *            [options.content] Modal content. Default:
		 *            none
		 * @param {String}
		 *            [options.title] Title. Default: none
		 * @param {String}
		 *            [options.okText] Text for the OK button.
		 *            Default: 'OK'
		 * @param {String}
		 *            [options.cancelText] Text for the cancel
		 *            button. Default: 'Cancel'. If passed a
		 *            falsey value, the button will be removed
		 * @param {Boolean}
		 *            [options.allowCancel Whether the modal can
		 *            be closed, other than by pressing OK.
		 *            Default: true
		 * @param {Boolean}
		 *            [options.escape] Whether the 'esc' key can
		 *            dismiss the modal. Default: true, but
		 *            false if options.cancellable is true
		 * @param {Boolean}
		 *            [options.animate] Whether to animate
		 *            in/out. Default: false
		 * @param {Function}
		 *            [options.template] Compiled underscore
		 *            template to override the default one
		 * @param {Boolean}
		 *            [options.enterTriggersOk] Whether the
		 *            'enter' key will trigger OK. Default:
		 *            false
		 */
		initialize : function(options) {

			$(".modal-content").draggable();
			this.options = _.extend({
				title : null,
				okText : '确定',
				focusOk : true,
				okCloses : true,
				cancelText : '取消',
				showFooter : true,
				allowCancel : true,
				escape : true,
				animate : false,
				modalCls : 'modal-lg',
				template : _.template(tpl),
				enterTriggersOk : false
			}, options);
		},

		/**
		 * Creates the DOM element
		 * 
		 * @api private
		 */
		render : function() {

			var $el = this.$el, options = this.options, content = options.content;

			// Create the modal container
			$el.html(options.template(options));

			var $content = this.$content = $el
					.find('.modal-body');

			// Insert the main content if it's a view
			if (content && content.$el) {
				content.render();
				$el.find('.modal-body').html(content.$el);
			}

			if (options.animate)
				$el.addClass('fade');

			this.isRendered = true;

			$(".modal").on('show.bs.modal', function() {
				alert('嘿，我听说您喜欢模态框...');
			});

			return this;
		},

		/**
		 * Renders and shows the modal
		 * 
		 * @param {Function}
		 *            [cb] Optional callback that runs only when
		 *            OK is pressed.
		 */
		open : function(cb, init, ca) {
			if (!this.isRendered)
				this.render();

			var self = this, $el = this.$el;

			// Create it
			$el.modal(_.extend({
				keyboard : false,
				remote : this.options.url,
				backdrop : 'static'
			}, this.options.modalOptions));

			// Focus OK button
			$el.one('shown.bs.modal',function() {
					if (self.options.focusOk) {
						$el.find('.btn.ok').focus();
					}

					if (self.options.content
							&& self.options.content.trigger) {
						self.options.content
								.trigger('shown',
										self);
					}

					self.trigger('shown');

					if (init) {
						init.call(self);
					}
				});
			$el.one('hidden.bs.modal', function onHidden(e) {
				// Ignore events propagated from interior
				// objects, like bootstrap tooltips
				if (e.target !== e.currentTarget) {
					return $el.one('hidden', onHidden);
				}
				self.remove();

				if (self.options.content
						&& self.options.content.trigger) {
					self.options.content
							.trigger('hidden', self);
				}

				self.trigger('hidden');
			});
			// Adjust the modal and backdrop z-index; for
			// dealing with multiple modals
			var numModals = Modal.count, $backdrop = $('.modal-backdrop:eq('
					+ numModals + ')'), backdropIndex = parseInt(
					$backdrop.css('z-index'), 10), elIndex = parseInt(
					$backdrop.css('z-index'), 10);

			$backdrop.css('z-index', backdropIndex + numModals);
			this.$el.css('z-index', elIndex + numModals);

			if (this.options.allowCancel) {
				$backdrop.one('click', function() {
					if (self.options.content
							&& self.options.content.trigger) {
						self.options.content.trigger('cancel',
								self);
					}

					self.trigger('cancel');
				});

				$(document).one('keyup.dismiss.modal',function(e) {
					e.which == 27
							&& self
									.trigger('cancel');

					if (self.options.content
							&& self.options.content.trigger) {
						e.which == 27
								&& self.options.content
										.trigger(
												'shown',
												self);
					}
				});
			}

			this.on('cancel', function() {
				self.close();
			});

			Modal.count++;

			// Run callback on OK if provided
			if (cb) {
				self.on('ok', cb);
			}
			if (ca) {
				self.on('cancel', ca);
			}
			return this;
		},

		/**
		 * Closes the modal
		 */
		close : function() {
			var self = this, $el = this.$el;

			// Check if the modal should stay open
			if (this._preventClose) {
				this._preventClose = false;
				return;
			}

			$el.one('hidden.bs.modal', function onHidden(e) {
				// Ignore events propagated from interior
				// objects, like bootstrap tooltips
				if (e.target !== e.currentTarget) {
					return $el.one('hidden', onHidden);
				}
				self.remove();

				if (self.options.content
						&& self.options.content.trigger) {
					self.options.content
							.trigger('hidden', self);
				}

				self.trigger('hidden');
			});

			$el.modal('hide');
			$(this).removeData("modal");

			Modal.count--;
		},

		/**
		 * Stop the modal from closing.
		 * Can be called from within a 'close' or 'ok' event listener.
		 */
		preventClose : function() {
			this._preventClose = true;
		}

	}, {
		count : 0
	});
	return Modal;
});