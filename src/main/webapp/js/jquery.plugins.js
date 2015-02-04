/* This file is minimized */
(function(c, b, d) {
	c.fn.tinyNav = function(a) {
		var e = c.extend({
			active: "selected",
			header: !1
		},
		a);
		return this.each(function() {
			d++;
			var a = c(this),
			h = "tinynav" + d,
			k = ".l_" + h,
			g = c("<select/>").addClass("tinynav " + h);
			if (a.is("ul,ol")) {
				e.header && g.append(c("<option/>").text("Navigation"));
				var n = "";
				a.addClass("l_" + h).find("a").each(function() {
					n += '<option value="' + c(this).attr("href") + '">' + c(this).text() + "</option>"
				});
				g.append(n);
				e.header || g.find(":eq(" + c(k + " li").index(c(k + " li." + e.active)) + ")").attr("selected", !0);
				g.change(function() {
					b.location.href = c(this).val()
				});
				c(k).after(g)
			}
		})
	}
})(jQuery, this, 0); (function(c) {
	c.fn.fitVids = function(b) {
		var d = {
			customSelector: null
		},
		a = document.createElement("div"),
		e = document.getElementsByTagName("base")[0] || document.getElementsByTagName("script")[0];
		a.className = "fit-vids-style";
		a.innerHTML = "&shy;<style>               .fluid-width-video-wrapper {                 width: 100%;                              position: relative;                       padding: 0;                            }                                                                                   .fluid-width-video-wrapper iframe,        .fluid-width-video-wrapper object,        .fluid-width-video-wrapper embed {           position: absolute;                       top: 0;                                   left: 0;                                  width: 100%;                              height: 100%;                          }                                       </style>";
		e.parentNode.insertBefore(a, e);
		b && c.extend(d, b);
		return this.each(function() {
			var a = ["iframe[src*='player.vimeo.com']", "iframe[src*='www.youtube.com']", "iframe[src*='www.kickstarter.com']", "object", "embed"];
			d.customSelector && a.push(d.customSelector);
			c(this).find(a.join(",")).each(function() {
				var a = c(this);
				if (! ("embed" == this.tagName.toLowerCase() && a.parent("object").length || a.parent(".fluid-width-video-wrapper").length)) {
					var b = ("object" == this.tagName.toLowerCase() ? a.attr("height") : a.height()) / a.width();
					if (!a.attr("id")) {
						var e = "fitvid" + Math.floor(999999 * Math.random());
						a.attr("id", e)
					}
					a.wrap('<div class="fluid-width-video-wrapper"></div>').parent(".fluid-width-video-wrapper").css("padding-top", 100 * b + "%");
					a.removeAttr("height").removeAttr("width")
				}
			})
		})
	}
})(jQuery);
jQuery.easing.jswing = jQuery.easing.swing;
jQuery.extend(jQuery.easing, {
	def: "easeOutQuad",
	swing: function(c, b, d, a, e) {
		return jQuery.easing[jQuery.easing.def](c, b, d, a, e)
	},
	easeInQuad: function(c, b, d, a, e) {
		return a * (b /= e) * b + d
	},
	easeOutQuad: function(c, b, d, a, e) {
		return - a * (b /= e) * (b - 2) + d
	},
	easeInOutQuad: function(c, b, d, a, e) {
		return 1 > (b /= e / 2) ? a / 2 * b * b + d: -a / 2 * (--b * (b - 2) - 1) + d
	},
	easeInCubic: function(c, b, d, a, e) {
		return a * (b /= e) * b * b + d
	},
	easeOutCubic: function(c, b, d, a, e) {
		return a * ((b = b / e - 1) * b * b + 1) + d
	},
	easeInOutCubic: function(c, b, d, a, e) {
		return 1 > (b /= e / 2) ? a / 2 * b * b * b + d: a / 2 * ((b -= 2) * b * b + 2) + d
	},
	easeInQuart: function(c, b, d, a, e) {
		return a * (b /= e) * b * b * b + d
	},
	easeOutQuart: function(c, b, d, a, e) {
		return - a * ((b = b / e - 1) * b * b * b - 1) + d
	},
	easeInOutQuart: function(c, b, d, a, e) {
		return 1 > (b /= e / 2) ? a / 2 * b * b * b * b + d: -a / 2 * ((b -= 2) * b * b * b - 2) + d
	},
	easeInQuint: function(c, b, d, a, e) {
		return a * (b /= e) * b * b * b * b + d
	},
	easeOutQuint: function(c, b, d, a, e) {
		return a * ((b = b / e - 1) * b * b * b * b + 1) + d
	},
	easeInOutQuint: function(c, b, d, a, e) {
		return 1 > (b /= e / 2) ? a / 2 * b * b * b * b * b + d: a / 2 * ((b -= 2) * b * b * b * b + 2) + d
	},
	easeInSine: function(c, b, d, a, e) {
		return - a * Math.cos(b / e * (Math.PI / 2)) + a + d
	},
	easeOutSine: function(c, b, d, a, e) {
		return a * Math.sin(b / e * (Math.PI / 2)) + d
	},
	easeInOutSine: function(c, b, d, a, e) {
		return - a / 2 * (Math.cos(Math.PI * b / e) - 1) + d
	},
	easeInExpo: function(c, b, d, a, e) {
		return 0 == b ? d: a * Math.pow(2, 10 * (b / e - 1)) + d
	},
	easeOutExpo: function(c, b, d, a, e) {
		return b == e ? d + a: a * ( - Math.pow(2, -10 * b / e) + 1) + d
	},
	easeInOutExpo: function(c, b, d, a, e) {
		return 0 == b ? d: b == e ? d + a: 1 > (b /= e / 2) ? a / 2 * Math.pow(2, 10 * (b - 1)) + d: a / 2 * ( - Math.pow(2, -10 * --b) + 2) + d
	},
	easeInCirc: function(c, b, d, a, e) {
		return - a * (Math.sqrt(1 - (b /= e) * b) - 1) + d
	},
	easeOutCirc: function(c, b, d, a, e) {
		return a * Math.sqrt(1 - (b = b / e - 1) * b) + d
	},
	easeInOutCirc: function(c, b, d, a, e) {
		return 1 > (b /= e / 2) ? -a / 2 * (Math.sqrt(1 - b * b) - 1) + d: a / 2 * (Math.sqrt(1 - (b -= 2) * b) + 1) + d
	},
	easeInElastic: function(c, b, d, a, e) {
		var c = 1.70158,
		f = 0,
		h = a;
		if (0 == b) return d;
		if (1 == (b /= e)) return d + a;
		f || (f = 0.3 * e);
		h < Math.abs(a) ? (h = a, c = f / 4) : c = f / (2 * Math.PI) * Math.asin(a / h);
		return - (h * Math.pow(2, 10 * (b -= 1)) * Math.sin(2 * (b * e - c) * Math.PI / f)) + d
	},
	easeOutElastic: function(c, b, d, a, e) {
		var c = 1.70158,
		f = 0,
		h = a;
		if (0 == b) return d;
		if (1 == (b /= e)) return d + a;
		f || (f = 0.3 * e);
		h < Math.abs(a) ? (h = a, c = f / 4) : c = f / (2 * Math.PI) * Math.asin(a / h);
		return h * Math.pow(2, -10 * b) * Math.sin(2 * (b * e - c) * Math.PI / f) + a + d
	},
	easeInOutElastic: function(c, b, d, a, e) {
		var c = 1.70158,
		f = 0,
		h = a;
		if (0 == b) return d;
		if (2 == (b /= e / 2)) return d + a;
		f || (f = 1.5 * 0.3 * e);
		h < Math.abs(a) ? (h = a, c = f / 4) : c = f / (2 * Math.PI) * Math.asin(a / h);
		return 1 > b ? -0.5 * h * Math.pow(2, 10 * (b -= 1)) * Math.sin(2 * (b * e - c) * Math.PI / f) + d: 0.5 * h * Math.pow(2, -10 * (b -= 1)) * Math.sin(2 * (b * e - c) * Math.PI / f) + a + d
	},
	easeInBack: function(c, b, d, a, e, f) {
		void 0 == f && (f = 1.70158);
		return a * (b /= e) * b * ((f + 1) * b - f) + d
	},
	easeOutBack: function(c, b, d, a, e, f) {
		void 0 == f && (f = 1.70158);
		return a * ((b = b / e - 1) * b * ((f + 1) * b + f) + 1) + d
	},
	easeInOutBack: function(c, b, d, a, e, f) {
		void 0 == f && (f = 1.70158);
		return 1 > (b /= e / 2) ? a / 2 * b * b * (((f *= 1.525) + 1) * b - f) + d: a / 2 * ((b -= 2) * b * (((f *= 1.525) + 1) * b + f) + 2) + d
	},
	easeInBounce: function(c, b, d, a, e) {
		return a - jQuery.easing.easeOutBounce(c, e - b, 0, a, e) + d
	},
	easeOutBounce: function(c, b, d, a, e) {
		return (b /= e) < 1 / 2.75 ? 7.5625 * a * b * b + d: b < 2 / 2.75 ? a * (7.5625 * (b -= 1.5 / 2.75) * b + 0.75) + d: b < 2.5 / 2.75 ? a * (7.5625 * (b -= 2.25 / 2.75) * b + 0.9375) + d: a * (7.5625 * (b -= 2.625 / 2.75) * b + 0.984375) + d
	},
	easeInOutBounce: function(c, b, d, a, e) {
		return b < e / 2 ? 0.5 * jQuery.easing.easeInBounce(c, 2 * b, 0, a, e) + d: 0.5 * jQuery.easing.easeOutBounce(c, 2 * b - e, 0, a, e) + 0.5 * a + d
	}
}); (function(c, b) {
	var d = b.event,
	a;
	d.special.smartresize = {
		setup: function() {
			b(this).bind("resize", d.special.smartresize.handler)
		},
		teardown: function() {
			b(this).unbind("resize", d.special.smartresize.handler)
		},
		handler: function(e, c) {
			var d = this,
			k = arguments;
			e.type = "smartresize";
			a && clearTimeout(a);
			a = setTimeout(function() {
				b.event.handle.apply(d, k)
			},
			"execAsap" === c ? 0 : 100)
		}
	};
	b.fn.smartresize = function(a) {
		return a ? this.bind("smartresize", a) : this.trigger("smartresize", ["execAsap"])
	};
	b.Mason = function(a, c) {
		this.element = b(c);
		this._create(a);
		this._init()
	};
	b.Mason.settings = {
		isResizable: !0,
		isAnimated: !1,
		animationOptions: {
			queue: !1,
			duration: 500
		},
		gutterWidth: 0,
		isRTL: !1,
		isFitWidth: !1,
		containerStyle: {
			position: "relative"
		}
	};
	b.Mason.prototype = {
		_filterFindBricks: function(a) {
			var b = this.options.itemSelector;
			return b ? a.filter(b).add(a.find(b)) : a
		},
		_getBricks: function(a) {
			return this._filterFindBricks(a).css({
				position: "absolute"
			}).addClass("masonry-brick")
		},
		_create: function(a) {
			this.options = b.extend(!0, {},
			b.Mason.settings, a);
			this.styleQueue = [];
			a = this.element[0].style;
			this.originalStyle = {
				height: a.height || ""
			};
			var d = this.options.containerStyle,
			h;
			for (h in d) this.originalStyle[h] = a[h] || "";
			this.element.css(d);
			this.horizontalDirection = this.options.isRTL ? "right": "left";
			this.offset = {
				x: parseInt(this.element.css("padding-" + this.horizontalDirection), 10),
				y: parseInt(this.element.css("padding-top"), 10)
			};
			this.isFluid = this.options.columnWidth && "function" == typeof this.options.columnWidth;
			var k = this;
			setTimeout(function() {
				k.element.addClass("masonry")
			},
			0);
			this.options.isResizable && b(c).bind("smartresize.masonry",
			function() {
				k.resize()
			});
			this.reloadItems()
		},
		_init: function(a) {
			this._getColumns();
			this._reLayout(a)
		},
		option: function(a) {
			b.isPlainObject(a) && (this.options = b.extend(!0, this.options, a))
		},
		layout: function(a, b) {
			for (var c = 0,
			d = a.length; c < d; c++) this._placeBrick(a[c]);
			d = {};
			d.height = Math.max.apply(Math, this.colYs);
			if (this.options.isFitWidth) {
				for (var g = 0,
				c = this.cols; --c && 0 === this.colYs[c];) g++;
				d.width = (this.cols - g) * this.columnWidth - this.options.gutterWidth
			}
			this.styleQueue.push({
				$el: this.element,
				style: d
			});
			for (var g = this.isLaidOut ? this.options.isAnimated ? "animate": "css": "css", n = this.options.animationOptions, l, c = 0, d = this.styleQueue.length; c < d; c++) l = this.styleQueue[c],
			l.$el[g](l.style, n);
			this.styleQueue = [];
			b && b.call(a);
			this.isLaidOut = !0
		},
		_getColumns: function() {
			var a = (this.options.isFitWidth ? this.element.parent() : this.element).width();
			this.columnWidth = this.isFluid ? this.options.columnWidth(a) : this.options.columnWidth || this.$bricks.outerWidth(!0) || a;
			this.columnWidth += this.options.gutterWidth;
			this.cols = Math.floor((a + this.options.gutterWidth) / this.columnWidth);
			this.cols = Math.max(this.cols, 1)
		},
		_placeBrick: function(a) {
			var a = b(a),
			c,
			d,
			k,
			g,
			n;
			c = Math.ceil(a.outerWidth(!0) / this.columnWidth);
			c = Math.min(c, this.cols);
			if (1 === c) k = this.colYs;
			else {
				d = this.cols + 1 - c;
				k = [];
				for (n = 0; n < d; n++) g = this.colYs.slice(n, n + c),
				k[n] = Math.max.apply(Math, g)
			}
			n = Math.min.apply(Math, k);
			d = c = 0;
			for (g = k.length; d < g; d++) if (k[d] === n) {
				c = d;
				break
			}
			k = {
				top: n + this.offset.y
			};
			k[this.horizontalDirection] = this.columnWidth * c + this.offset.x;
			this.styleQueue.push({
				$el: a,
				style: k
			});
			a = n + a.outerHeight(!0);
			k = this.cols + 1 - g;
			for (d = 0; d < k; d++) this.colYs[c + d] = a
		},
		resize: function() {
			var a = this.cols;
			this._getColumns(); (this.isFluid || this.cols !== a) && this._reLayout()
		},
		_reLayout: function(a) {
			var b = this.cols;
			for (this.colYs = []; b--;) this.colYs.push(0);
			this.layout(this.$bricks, a)
		},
		reloadItems: function() {
			this.$bricks = this._getBricks(this.element.children())
		},
		reload: function(a) {
			this.reloadItems();
			this._init(a)
		},
		appended: function(a, b, c) {
			if (b) {
				this._filterFindBricks(a).css({
					top: this.element.height()
				});
				var d = this;
				setTimeout(function() {
					d._appended(a, c)
				},
				1)
			} else this._appended(a, c)
		},
		_appended: function(a, b) {
			var c = this._getBricks(a);
			this.$bricks = this.$bricks.add(c);
			this.layout(c, b)
		},
		remove: function(a) {
			this.$bricks = this.$bricks.not(a);
			a.remove()
		},
		destroy: function() {
			this.$bricks.removeClass("masonry-brick").each(function() {
				this.style.position = "";
				this.style.top = "";
				this.style.left = ""
			});
			var a = this.element[0].style,
			d;
			for (d in this.originalStyle) a[d] = this.originalStyle[d];
			this.element.unbind(".masonry").removeClass("masonry").removeData("masonry");
			b(c).unbind(".masonry")
		}
	};
	b.fn.imagesLoaded = function(a) {
		function c() {
			a.call(k, g)
		}
		function d(a) {
			a = a.target;
			a.src !== l && -1 === b.inArray(a, t) && (t.push(a), 0 >= --n && (setTimeout(c), g.unbind(".imagesLoaded", d)))
		}
		var k = this,
		g = k.find("img").add(k.filter("img")),
		n = g.length,
		l = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==",
		t = [];
		return n || c(),
		g.bind("load.imagesLoaded error.imagesLoaded", d).each(function() {
			var a = this.src;
			this.src = l;
			this.src = a
		}),
		k
	};
	b.fn.masonry = function(a) {
		if ("string" == typeof a) {
			var d = Array.prototype.slice.call(arguments, 1);
			this.each(function() {
				var h = b.data(this, "masonry");
				h ? !b.isFunction(h[a]) || "_" === a.charAt(0) ? c.console && c.console.error("no such method '" + a + "' for masonry instance") : h[a].apply(h, d) : c.console && c.console.error("cannot call methods on masonry prior to initialization; attempted to call method '" + a + "'")
			})
		} else this.each(function() {
			var c = b.data(this, "masonry");
			c ? (c.option(a || {}), c._init()) : b.data(this, "masonry", new b.Mason(a, this))
		});
		return this
	}
})(window, jQuery);
eval(function(c, b, d, a, e, f) {
	e = function(a) {
		return (a < b ? "": e(parseInt(a / b))) + (35 < (a %= b) ? String.fromCharCode(a + 29) : a.toString(36))
	};
	if (!"".replace(/^/, String)) {
		for (; d--;) f[e(d)] = a[d] || e(d);
		a = [function(a) {
			return f[a]
		}];
		e = function() {
			return "\\w+"
		};
		d = 1
	}
	for (; d--;) a[d] && (c = c.replace(RegExp("\\b" + e(d) + "\\b", "g"), a[d]));
	return c
} ("(E($){F r=(1w&&1w.3J)?1w.3J.36():\"\";F u=($.1N.2G&&1O($.1N.2H,10)<7&&1O($.1N.2H,10)>4);F v=N;A(r.1x(\"4N\")>-1){A(r.1x(\"4O\")>-1||r.1x(\"4P\")>-1||r.1x(\"4Q\")>-1){v=I}};A(r.1x(\"4R\")>-1){A(r.1x(\"4S\")>-1&&r.1x(\"4T\")>-1){v=I}};A(r.1x(\"4U\")>-1){v=I};A(r.1x(\"4V 4W 4X 7\")>-1){v=I};A($.J===2e){$.1m({J:E(a,b){A(a){J=E(){R a.2p(b||8,4Y)}};R J}})};$.1m($.2I.4Z,{51:E(){A(8.G.2J){8.G.2J.52(8.53,8.54,8)}(2f.2I.2J[8.55]||2f.2I.2J.56)(8)}});$.1m($.1P,{2q:E(x,t,b,c,d,s){A(s==2e)s=1.57;R c*((t=t/d-1)*t*((s+1)*t+s)+1)+b}});$.1m({2r:{3K:{T:'38-1b',1j:{1n:58,C:59,D:5a},1Q:N,1r:{1y:0.6},2g:{W:{1F:2K,1P:\"2q\"},1f:{1F:5b,1P:\"2q\"},Q:{1F:5c,1P:\"2q\"},3a:{1F:2h,1P:\"2q\",3L:10,3M:2}},1z:{C:3N,D:3O},18:{C:3N,D:3O},3b:\"1g\",1A:{1G:\"5d\",5e:N,5f:\"15\"}},G:{},23:{},X:{},16:{},B:{1b:[],K:{1f:[],2L:[],1e:[],2M:[]},Z:[],16:[],1s:[],15:[]},1c:N,1H:N,1R:\"16\",3P:{1S:{13:/[^\\.]\\.(1S)\\s*$/i},2N:{13:/2N\\.O\\/3Q/i,S:'=',11:1,18:1,12:\"19://1B.2N.O/24/%Y%?1C=1&L;3R=1&L;2i=0&L;3S=1\"},3T:{13:/3T\\.3U\\//i,S:'/',11:3,18:1,12:\"19://1B.2N.O/24/%Y%?1C=1&L;3R=1&L;2i=0&L;3S=1\"},3c:{13:/3c\\.O\\/3Q/i,S:'/',11:4,12:\"19://1B.3c.O/5g/%Y%/.1S?5h=5i=5j\"},3d:{13:/3d\\.O\\/1I/i,S:'/',11:4,12:\"19://1B.3d.O/1S/1I/%Y%?5k=0&L;5l=1\"},1D:{13:/1D\\.O\\/5m/i,S:'=',11:1,12:\"19://1I.1D.O/5n.1S?1C=1&L;5o=5p&L;5q=%Y%\"},3e:{13:/3e\\.O/i,S:'/',11:3,18:1,12:\"19://3f.3e.O/1I/%Y%?5r=1&L;1C=1&L;5s=1&L;5t=1&L;5u=0&L;5v=&L;3g=1\"},3h:{13:/3h.O/i,S:'/',11:5,12:\"19://1B.3h.O/5w.5x?5y=%Y%\"},5z:{13:/2s.O\\/1I\\//i,S:'1I/',11:1,12:\"19://1B.2s.O/2O/2O.5A.1S?2P=I&L;3g=1&L;5B=I&L;3V=%Y%\"},2s:{13:/2s.O\\/1I:/i,S:'1I:',11:1,12:\"19://1B.2s.O/2O/2O.1S?1C=I&L;3g=1&L;3V=%Y%\"},3i:{13:/3i.3W/i,S:'/',11:4,12:\"19://1B.3i.3W/1z/1I/%Y%?5C=%2F&L;1C=I&L;5D=%Y%&L;5E=I&L;5F=0.5G&L;5H=0.5I&L;5J=5K\"},3j:{13:/3j.O/i,S:'/',11:3,12:\"19://1B.3j.O/3f/%Y%\"},3X:{13:/v.3X.O/i,S:'/',11:3,12:\"19://5L.5M.O/3f.1S?5N=%Y%&L;v=1.5O\"},3k:{13:/3k.O\\/5P/i,S:'/',11:4,12:\"19://5Q.3k.O/%Y%.5R?1C=I&L;1T=1U\"}},3Y:{3l:{13:/3l.O\\/1t/i,S:'?',11:1,12:\"19://1B.3l.O/1t/24/?5S=5T-5U-5V-5W-5X&L;w=%C%&L;h=%D%&L;%Y%\"},5Y:{13:/1t.1D.O(.*)5Z=c/i,S:'?',11:1,12:\"19://1t.1D.O/?3m=60&L;%Y%\"},61:{13:/1t.1D.O\\/1t\\/3Z/i,S:'?',11:1,12:\"19://1t.1D.O/1t/3Z?3m=24&L;%Y%\"},1D:{13:/1t.1D.O/i,S:'?',11:1,12:\"19://1t.1D.O/1t?%Y%&L;3m=24\"}},41:/\\.(62|63|64|65|66|67)(.*)?$/i,1r:{2Q:E(a){8.G=a;8.U=$('<H Y=\"'+2t 3n().3o()+'\" V=\"'+8.G.T+'-1r\"></H>');8.U.P($.1m({},{'1V':'68','1g':0,'1a':0,'1y':0,'1J':'1U','z-11':8.G.1n},8.G.1j));8.U.1u($.J(E(e){A(!8.G.1Q){A($.25(8.G.1W)){8.G.1W()}M{8.1E()}}e.2u()},8));8.2v=I;8.42();R 8},42:E(){8.2R=$(2S.3p);8.2R.26(8.U);A(u){8.U.P('1V','2T');F a=1O(8.U.P('1n'));A(!a){a=1;F b=8.U.P('1V');A(b=='69'||!b){8.U.P('1V','6a')}8.U.P('1n',a)}a=(!!(8.G.1n||8.G.1n===0)&&a>8.G.1n)?8.G.1n:a-1;A(a<0){a=1}8.1o=$('<18 Y=\"43'+2t 3n().3o()+'\" 6b=\"6c\" 44=0 2w=\"\"></18>');8.1o.P({1n:a,1V:'2T',1g:0,1a:0,1T:'1U',C:0,D:0,1y:0});8.1o.6d(8.U);$('15, 3p').P({'D':'2h%','C':'2h%','2x-1a':0,'2x-2j':0})}},1h:E(x,y){8.U.P({'D':0,'C':0});A(8.1o){8.1o.P({'D':0,'C':0})};F a={x:$(2S).C(),y:$(2S).D()};8.U.P({'C':'2h%','D':y?y:a.y});A(8.1o){8.1o.P({'D':0,'C':0});8.1o.P({'1V':'2T','1a':0,'1g':0,'C':8.U.C(),'D':y?y:a.y})}R 8},W:E(a){A(!8.2v){R 8};A(8.28){8.28.1X()};A(8.1o){8.1o.P('1J','3q')};8.U.P({'1J':'3q','1y':0});8.2R.1k('1h',$.J(8.1h,8));8.1h();8.2v=N;8.28=8.U.45(8.G.46,8.G.1j.1y,$.J(E(){A(8.G.1j.1y){8.U.P(8.G.1j)};8.U.2U('W');A($.25(a)){a()}},8));R 8},1E:E(a){A(8.2v){R 8};A(8.28){8.28.1X()};A(8.1o){8.1o.P('1J','1U')};8.2R.29('1h');8.2v=I;8.28=8.U.45(8.G.47,0,$.J(E(){8.U.2U('1E');A($.25(a)){a()};8.U.P({'D':0,'C':0,'1J':'1U'})},8));R 8}},2Q:E(a){8.G=$.1m(I,8.3K,a);F b=8.G.T;F c=$('<H V=\"'+b+' '+b+'-1R-16\"><H V=\"'+b+'-1T-1g-1a\"></H><H V=\"'+b+'-1T-1g-48\"></H><H V=\"'+b+'-1T-1g-2j\"></H><a V=\"'+b+'-1d-1f\" 1l=\"#1f\"><1p>6e</1p></a><H V=\"'+b+'-1w\"><a V=\"'+b+'-1d-1a\" 1l=\"#\"><1p>49</1p></a><a V=\"'+b+'-1d-2j\" 1l=\"#\"><1p>4a</1p></a></H><H V=\"'+b+'-K\"><H V=\"'+b+'-K-6f\"></H><a V=\"'+b+'-1d-1a\" 1l=\"#\"><1p>49</1p></a><a V=\"'+b+'-1d-1e\" 1l=\"#\"><1p>6g</1p></a><H V=\"'+b+'-K-1Y\"></H><a V=\"'+b+'-1d-2j\" 1l=\"#\"><1p>4a</1p></a><H V=\"'+b+'-K-3r\"></H></H><H V=\"'+b+'-Z\"></H><H V=\"'+b+'-15\"></H><H V=\"'+b+'-1T-2V-1a\"></H><H V=\"'+b+'-1T-2V-48\"></H><H V=\"'+b+'-1T-2V-2j\"></H></H>');F e=8.B;8.1r.2Q({T:b,1j:8.G.1r,1Q:8.G.1Q,1n:8.G.1j.1n-1,1W:8.J(8.1f),46:(v?2:8.G.2g.W.1F),47:(v?2:8.G.2g.1f.1F)});e.1b=c;e.1w=$('.'+b+'-1w',c);e.K.H=$('.'+b+'-K',c);e.K.1f=$('.'+b+'-1d-1f',c);e.K.2L=$('.'+b+'-1d-1a',c);e.K.1e=$('.'+b+'-1d-1e',c);e.K.2M=$('.'+b+'-1d-2j',c);e.K.1Y=$('.'+b+'-K-1Y',c);e.Z=$('.'+b+'-Z',c);e.15=$('.'+b+'-15',c);e.Q=$('<H V=\"'+b+'-Q\"></H>').P({'1V':'2T','z-11':8.G.1j.1n,'1g':-6h}).26(c);$('3p').26(e.Q);8.1i=$(6i);8.4b();R c},4b:E(){F a=8.1i;a[0].6j=E(){a.2U('1h')};a.1k('1h',8.J(E(){A(8.1c){8.1r.1h();A(!8.1H){8.2a()}}}));a.1k('6k',8.J(E(){A(8.1c&&!8.1H){8.2a()}}));$(2S).1k('6l',8.J(E(e){A(8.1c){A(e.3s==27&&8.G.1Q==N){8.1f()}A(8.X.2y>1){A(e.3s==37){8.B.K.2L.2W('1u',e)}A(e.3s==39){8.B.K.2M.2W('1u',e)}}}}));8.B.K.1f.1k('1u 2X',{\"1K\":\"1f\"},8.J(8.1K));8.B.K.1e.1k('1u 2X',{\"1K\":\"4c\"},8.J(8.1K));8.1r.U.1k('W',8.J(E(){$(8).2W('W')}));8.1r.U.1k('1E',8.J(E(){$(8).2W('1f')}))},1K:E(e){8[e.6m.1K].2p(8);e.2u()},J:E(a){R $.J(a,8)},4d:E(d,f,g){F h={1G:\"\",C:\"\",D:\"\",1l:\"\"};$.1Z(d,8.J(E(b,c){$.1Z(c,8.J(E(i,e){A((b==\"1z\"&&f.S('?')[0].2b(e.13))||(b==\"18\"&&f.2b(e.13))){h.1l=f;A(e.S){F a=b==\"1z\"?f.S(e.S)[e.11].S('?')[0].S('&')[0]:f.S(e.S)[e.11];h.1l=e.12.2z(\"%Y%\",a).2z(\"%C%\",g.C).2z(\"%D%\",g.D)}h.1G=e.18?\"18\":b;h.C=g.C||8.G[h.1G].C;h.D=g.D||8.G[h.1G].D;R N}}));A(!!h.1G)R N}));R h},4e:E(a){F b=8.B.K.2L;F c=8.B.K.2M;A($.2Y(a)&&a.2k>1){8.X.3t=a;8.X.1q=0;8.X.2y=a.2k;a=a[0];b.29('1u');c.29('1u');b.1k('1u 2X',8.J(E(e){A(8.X.1q-1<0){8.X.1q=8.X.2y-1}M{8.X.1q=8.X.1q-1}8.W(8.X.3t[8.X.1q]);e.2u()}));c.1k('1u 2X',8.J(E(e){A(8.X.1q+1>=8.X.2y){8.X.1q=0}M{8.X.1q=8.X.1q+1}8.W(8.X.3t[8.X.1q]);e.2u()}))}A(8.X.2y>1){A(8.B.1w.P(\"1J\")==\"1U\"){8.B.K.H.W()}b.W();c.W()}M{b.1E();c.1E()}},4f:E(d,f){$.1Z(d,8.J(E(i,b){F c=$('<a 1l=\"#\" V=\"'+b['V']+'\">'+b['15']+'</a>');c.1k('1u',8.J(E(e){A($.25(b.1W)){f=2A f===\"2e\"?N:f[8.X.1q||0];b.1W(8.B.16.2w,8,f)}e.2u()}));8.B.K.1Y.26(a)}));8.B.K.H.W()},W:E(d,f,g,h){F i='';F j=N;A(2A d===\"3u\"&&d[0].6n){F k=d;d=\"#\";i='U'}A(($.2Y(d)&&d.2k<=1)||d==''){R N};8.21();j=8.1c;8.4g();A(!j){8.2a()}8.4e(d,f);A($.2Y(d)&&d.2k>1){d=d[0]}F l=d.S(\"%4h%\");F d=l[0];F m=l[1]||'';f=$.1m(I,{'C':0,'D':0,'1Q':0,'3v':'','1s':m,'3w':I,'Q':-1,'18':N,'2Z':'','31':I,'2B':E(){},'32':E(){}},f||{});8.G.2B=f.2B;8.G.32=f.32;8.G.31=f.31;4i=8.4j(d);f=$.1m({},f,4i);F n={x:8.1i.C(),y:8.1i.D()};A(f.C&&(\"\"+f.C).2c(\"p\")>0){f.C=(n.x-20)*f.C.4k(0,f.C.2c(\"p\"))/2h}A(f.D&&(\"\"+f.D).2c(\"p\")>0){f.D=(n.y-20)*f.D.4k(0,f.D.2c(\"p\"))/2h}8.1r.G.1Q=f.1Q;8.B.K.1e.2d(8.G.T+'-1d-3x').2C(8.G.T+'-1d-1e');8.1H=!(f.Q>0||(f.Q==-1&&f.3w));A($.2Y(f.K)){8.4f(f.K,h)}A(!8.B.K.1Y.4l(\":1v\")){8.B.K.H.W()}A(f.3v!=''){i=f.3v}M A(f.18){i='18'}M A(d.2b(8.41)){i='16'}M{F o=8.4d({\"1z\":8.3P,\"18\":8.3Y},d,f);A(!!o.1G){d=o.1l;i=o.1G;f.C=o.C;f.D=o.D}A(!!i==N){A(d.2b(/#/)){3y=d.6o(d.2c(\"#\"));A($(3y).2k>0){i='3z';d=3y}M{i='1A'}}M{i='1A'}}}A(i=='16'){8.B.K.1e.1E();8.B.16=2t 6p();$(8.B.16).4m(8.J(E(){F a=8.B.16;$(a).29('4m');A(!8.1c){R N}A(f.C){C=1O(f.C);D=1O(f.D)}M{A(f.3w){F b=8.3A(a.C,a.D);C=b.C;D=b.D;A(a.C!=C||a.D!=D){8.B.K.H.W();8.B.K.1e.W()}}M{C=a.C;D=a.D}}8.B.1s=(f.1s=='')?33:$('<H V=\"'+8.G.T+'-1s\"></H>').15(f.1s);8.34();8.1h(C,D)}));8.B.16.6q=8.J(E(){8.2l(\"4n 6r 16 6s 3U 4o. 6t 6u 6v 6w.\")});8.B.16.2w=d}M A(i=='1z'||i=='3z'||i=='1A'||i=='U'){A(i=='3z'){F p=$(d).6x(I).W();C=f.C>0?f.C:$(d).3B(I);D=f.D>0?f.D:$(d).3C(I);8.2m(p,C,D)}M A(i=='1A'){A(f.C){C=f.C;D=f.D}M{8.2l(\"4p 4q 4r 4s 2n 4t. 4u ?1b[C]=4v&1b[D]=2K 4w 2n 3r 4x 2n 12.\");R N}A(8.23.1A){8.23.1A.6y()}8.23.1A=$.1A($.1m({},8.G.1A,{\"12\":d,\"2l\":8.J(E(a,b,c){8.2l(\"6z 6A \"+a.6B+\" \"+c)}),\"6C\":8.J(E(a){8.2m($(a),C,D)})}))}M A(i=='1z'){F q=8.4y(d,f.C,f.D,f.2Z);8.2m($(q),f.C,f.D,'1z')}M A(i=='U'){C=f.C>0?f.C:k.3B(I);D=f.D>0?f.D:k.3C(I);8.2m(k,C,D)}}M A(i=='18'){A(f.C){C=f.C;D=f.D}M{8.2l(\"4p 4q 4r 4s 2n 4t. 4u ?1b[C]=4v&1b[D]=2K&6D[18]=I 4w 2n 3r 4x 2n 12.\");R N}8.2m($('<18 Y=\"43'+(2t 3n().3o())+'\" 44=\"0\" 2w=\"'+d+'\" 1j=\"2x:0; 3D:0;\"></18>').P(f),f.C,f.D)}8.1W=$.25(g)?g:E(e){}},34:E(){8.B.Z.1k('22',8.J(E(){8.B.Z.29('22');A(!8.1c){R N}8.35('16');8.B.Z.1v();8.B.15.1v();A(8.B.1s){8.B.Z.26(8.B.1s)}8.B.Z.26(8.B.16);A(u||v){8.B.Z.2d(8.G.T+'-21')}M{$(8.B.16).1X().P(\"1y\",0).2o({\"1y\":1},2K,8.J(E(){8.B.Z.2d(8.G.T+'-21')}))}8.G.2B.2p(8)}))},4y:E(a,b,c,d){A(2A d=='2e'||d=='')d='2P=1&1C=1&6E=1';F e='<3u C=\"'+b+'\" D=\"'+c+'\" 6F=\"6G:6H-6I-6J-6K-6L\"><17 T=\"6M\" 1L=\"'+a+'\" 1j=\"2x:0; 3D:0;\"></17>';e+='<17 T=\"6N\" 1L=\"I\"></17><17 T=\"4z\" 1L=\"4A\"></17><17 T=\"4B\" 1L=\"4C\"></17>';e+='<17 T=\"2P\" 1L=\"I\"></17><17 T=\"1C\" 1L=\"I\"></17><17 T=\"2Z\" 1L=\"'+d+'\"></17>';e+='<17 T=\"C\" 1L=\"'+b+'\"></17><17 T=\"D\" 1L=\"'+c+'\"></17>';e+='<24 2w=\"'+a+'\" 1G=\"6O/x-6P-1z\" 4z=\"4A\" 6Q=\"I\" 2P=\"I\" 1C=\"I\" 2Z=\"'+d+'\" 4B=\"4C\" C=\"'+b+'\" D=\"'+c+'\" 1j=\"2x:0; 3D:0;\"></24></3u>';R e},2m:E(a,b,c,d){8.35(\"15\");8.1h(b+30,c+20);8.B.Z.1k('22',8.J(E(){8.B.Z.2d(8.G.T+'-21');8.B.15.26(a);A(d==\"1z\"&&r.1x(\"6R\")>-1){8.B.15.15(a)}8.B.Z.29('22');A(8.G.31&&2A 4D!=='2e'){4D.6S()}8.G.2B.2p(8)}))},2a:E(w,h){F a={x:$(8.1i).C(),y:$(8.1i).D()};F b={x:$(8.1i).4E(),y:$(8.1i).4F()};F c=h!=33?h:8.B.1b.3C();F d=w!=33?w:8.B.1b.3B();F y=0;F x=0;x=b.x+((a.x-d)/2);A(8.1c){y=b.y+(a.y-c)/2}M A(8.G.3b==\"2V\"){y=(b.y+a.y+14)}M A(8.G.3b==\"1g\"){y=(b.y-c)-14}A(8.1c){A(!8.23.Q){8.1M(8.B.Q,{'1a':x},'Q')}8.1M(8.B.Q,{'1g':y},'Q')}M{8.B.Q.P({'1a':x,'1g':y})}},1M:E(d,f,g,h,i){F j=$.6T({2D:i||N,1F:(v?2:8.G.2g[g].1F),1P:8.G.2g[g].1P,22:($.25(h)?8.J(h,8):33)});R d[j.2D===N?\"1Z\":\"2D\"](E(){A(3E($.1K.38)>1.5){A(j.2D===N){2f.6U(8)}}F c=$.1m({},j),4G=8;c.6V=$.1m({},f);c.4H={};4I(p 6W f){T=p;6X=f[T];c.4H[T]=c.4J&&c.4J[T]||c.1P||'6Y'}$.1Z(f,E(a,b){F e=2t $.2I(4G,c,a);e.1Y(e.6Z(I)||0,b,\"70\")});R I})},1h:E(x,y){A(8.1c){F a={x:$(8.1i).C(),y:$(8.1i).D()};F b={x:$(8.1i).4E(),y:$(8.1i).4F()};F c=(b.x+(a.x-(x+14))/2);F d=(b.y+(a.y-(y+14))/2);A($.1N.2G||($.1N.71&&(3E($.1N.2H)<1.9))){y+=4}8.23.Q=I;8.1M(8.B.Q.1X(),{'1a':(8.1H&&c<0)?0:c,'1g':(8.1H&&(y+14)>a.y)?b.y:d},'Q',$.J(E(){8.Q=N},8.23));8.1M(8.B.15,{'D':y-20},'Q');8.1M(8.B.1b.1X(),{'C':(x+14),'D':y-20},'Q',{},I);8.1M(8.B.1w,{'C':x},'Q');8.1M(8.B.1w,{'1g':(y-4K)/2},'Q');8.1M(8.B.Z.1X(),{'C':x,'D':y},'Q',E(){$(8.B.Z).2U('22')})}M{8.B.15.P({'D':y-20});8.B.1b.P({'C':x+14,'D':y-20});8.B.Z.P({'C':x,'D':y});8.B.1w.P({'C':x,'D':4K})}},1f:E(a){8.1c=N;8.X={};8.G.32();A($.1N.2G||v){8.B.Z.1v();8.B.15.1E().1v().W();8.B.K.1Y.1v();8.B.Q.P(\"1J\",\"1U\");8.2a()}M{8.B.Q.2o({\"1y\":0,\"1g\":\"-=40\"},{2D:N,22:(8.J(E(){8.B.Z.1v();8.B.15.1v();8.B.K.1Y.1v();8.2a();8.B.Q.P({\"1J\":\"1U\",\"1y\":1,\"3F\":\"1c\"})}))})}8.1r.1E(8.J(E(){A($.25(8.1W)){8.1W.2p(8,$.72(a))}}));8.B.Z.1X(I,N).29(\"22\")},4g:E(){8.1c=I;A($.1N.2G){8.B.Q.73(0).1j.74(\"4L\")}8.B.Q.P({\"1J\":\"3q\",\"3F\":\"1c\"}).W();8.1r.W()},3a:E(){F z=8.G.2g.3a;F x=z.3L;F d=z.1F;F t=z.28;F o=z.3M;F l=8.B.Q.1V().1a;F e=8.B.Q;4I(i=0;i<o;i++){e.2o({1a:l+x},d,t);e.2o({1a:l-x},d,t)};e.2o({1a:l+x},d,t);e.2o({1a:l},d,t)},35:E(a){A(a!=8.1R){8.B.1b.2d(8.G.T+\"-1R-\"+8.1R);8.1R=a;8.B.1b.2C(8.G.T+\"-1R-\"+8.1R)}8.B.Q.P(\"3F\",\"1c\")},2l:E(a){75(a);8.1f()},4j:E(d){F e=/1b\\[(.*)?\\]$/i;F f={};A(d.2b(/#/)){d=d.4M(0,d.2c(\"#\"))}d=d.4M(d.2c('?')+1).S(\"&\");$.1Z(d,E(){F a=8.S(\"=\");F b=a[0];F c=a[1];A(b.2b(e)){A(76(c)){c=1O(c)}M A(c.36()==\"I\"){c=I}M A(c.36()==\"N\"){c=N}f[b.2b(e)[1]]=c}});R f},3A:E(x,y){F a=8.1i.C()-50;F b=8.1i.D()-50;A(x>a){y=y*(a/x);x=a;A(y>b){x=x*(b/y);y=b}}M A(y>b){x=x*(b/y);y=b;A(x>a){y=y*(a/x);x=a}}R{\"C\":1O(x),\"D\":1O(y)}},21:E(){F a=8.G.1j;F b=8.B.Z;8.35('16');b.77().1X(I);b.1v();8.B.15.1v();b.2C(8.G.T+'-21');8.B.K.H.1E();A(8.1c==N){8.2a(a[\"C\"],a[\"D\"]);8.1h(a[\"C\"],a[\"D\"])}},4c:E(){F a=8.B.K;F b=8.B.16;F c=8.G.T;A(8.1H){8.1H=N;a.1e.2d(c+'-1d-3x');a.1e.2C(c+'-1d-1e');8.21();8.34();a.H.W();F d=8.3A(b.C,b.D);8.1h(d.C,d.D)}M{8.1H=I;a.1e.2d(c+'-1d-1e');a.1e.2C(c+'-1d-3x');8.21();8.34();a.H.W();8.1h(b.C,b.D)}}},1b:E(a,b,c){A(2A a!=='2e'){R $.2r.W(a,b,c)}M{R $.2r}}});$.1K.1b=E(l,m){R $(8).78('1u',E(e){$(8).79();F b=[];F c=$.3G($(8).2E('2i'))||'';F d=$.3G($(8).2E('1s'))||'';F f=$(8);c=c.2z('[','\\\\\\\\[');c=c.2z(']','\\\\\\\\]');A(!c||c==''||c==='7a'){b=$(8).2E('1l');3H=(d||d!='')?$.1m({},l,{'1s':d}):l}M{F g=[];F h=[];F j=[];F k=N;$(\"a[2i], 7b[2i]\",8.7c).4L(\"[2i=\\\"\"+c+\"\\\"]\").1Z($.J(E(i,a){A(8==a){h.7d(a);k=I}M A(k==N){j.3I(a)}M{h.3I(a)}},8));g=f=h.7e(j);$.1Z(g,E(){F a=$.3G($(8).2E('1s'))||'';a=a?\"%4h%\"+a:'';b.3I($(8).2E('1l')+a)});A(b.2k==1){b=b[0]}3H=l}$.2r.W(b,3H,m,f);R N})};$(E(){A(3E($.1K.38)>1.2){$.2r.2Q()}M{7f\"4n 2f 2H 7g 7h 4o 4l 7i 7j. 7k 7l 7m 2f 1.3+\";}})})(2f);", 62, 457, "        this                            if esqueleto width height function var options div true proxy buttons amp else false com css move return split name element class show gallery id background  index url reg  html image param iframe http left lightbox visible button max close top resize win style bind href extend zIndex shim span current overlay title maps click empty navigator search opacity flash ajax www autoplay google hide duration type maximized video display fn value morph browser parseInt easing modal mode swf border none position callback stop custom each  loading complete animations embed isFunction append  transition unbind movebox match indexOf removeClass undefined jQuery animation 100 rel right length error appendhtml the animate apply easeOutBack LightBoxObject collegehumor new preventDefault hidden src margin total replace typeof onOpen addClass queue attr  msie version fx step 400 prev next youtube moogaloop autostart create target document absolute trigger bottom triggerHandler touchend isArray flashvars  cufon onClose null loadimage changemode toLowerCase  jquery  shake emergefrom metacafe dailymotion vimeo player fullscreen gametrailers ustream twitvid vzaar bing output Date getTime body block end keyCode images object force autoresize min obj inline calculate outerWidth outerHeight padding parseFloat overflow trim copy_options push userAgent defaults distance loops 640 360 videoregs watch fs enablejsapi youtu be clip_id tv wordpress mapsreg ms  imgsreg inject IF_ frameborder fadeTo showDuration closeDuration middle Previous Next addevents maximinimize ex create_gallery custombuttons open LIGHTBOX urloptions unserialize substring is load The loaded You have to specify size Add 600 at of swf2html allowscriptaccess always wmode transparent Cufon scrollLeft scrollTop self animatedProperties for specialEasing 90 filter slice mobile android googletv htc_flyer opera mini mobi iphone windows phone os arguments prototype  update call elem now prop _default 70158 99999 470 280 200 800 GET cache dataType fplayer playerVars autoPlay yes additionalInfos autoStart videoplay googleplayer hl en docId hd show_title show_byline show_portrait color remote_wrap php mid collegehumornew jukebox use_node_id loc vid disabledComment beginPercent 5331 endPercent 6292 locale en_US s0 videopress guid 01 videos view flashplayer emid 3ede2bc8 227d 8fec d84a 00b6ff19b1cb streetview layer svembed googlev2 jpg jpeg gif png bmp tiff fixed static relative scrolling no insertAfter Close init Maximize 999 window onorientationchange scroll keydown data nodeType substr Image onerror requested cannot Please try again later clone abort AJAX Error status success lighbox fullscreenbutton classid clsid D27CDB6E AE6D 11cf 96B8 444553540000 movie allowFullScreen application shockwave allowfullscreen chrome refresh speed _mark curAnim in val swing cur px mozilla makeArray get removeAttribute alert isFinite children live blur nofollow area ownerDocument unshift concat throw that was too old Lightbox Evolution requires".split(" "), 0, {})); (function(c) {
	var b = "rollIn fadeIn fadeInUp fadeInDown fadeInLeft fadeInRight fadeInRight bounceIn bounceInDown bounceInUp bounceInLeft bounceInRight rotateInDownLeft rotateInDownRight rotateInUpLeft rotateInUpRight".split(" "),
	d = b.length;
	c.fn.oneByOne = function(a) {
		function e(a) {
			g.slideShow && f();
			l.stop(!0, !0).animate({
				left: -a * j
			},
			g.delay,
			function() {
				a != t && (r = t, q[r] && (!c.browser.msie && !c.browser.opera && q[r].fadeOut(), c(".buttonArea a:eq(" + r + ")", n).removeClass("active")), c(".buttonArea a:eq(" + a + ")", n).addClass("active"), "random" != g.easeType.toLowerCase() ? q[a].show().children().each(function(a) {
					if (c(this).hasClass(g.easeType)) {
						c(this).removeClass(g.easeType);
						c(this).hide()
					}
					c(this).show().addClass("animate" + a + " " + g.easeType)
				}) : (v = b[Math.floor(Math.random() * d)], w[a] = v, q[r] && q[r].children().each(function() {
					if (c(this).hasClass(w[r])) {
						c(this).removeClass(w[r]);
						c(this).fadeOut("medium")
					}
				}), q[a].show().children().each(function(a) {
					c(this).show().addClass("animate" + a + " " + v)
				})), l.delay(200 * q[a].children().length).queue(function() {
					g.slideShow && h()
				}), p && p.css("cursor", "pointer"), t = a)
			})
		}
		function f() {
			clearInterval(l.data("interval"))
		}
		function h() {
			clearInterval(l.data("interval"));
			slideShowInt = setInterval(function() {
				k()
			},
			g.slideShowDelay);
			l.data("interval", slideShowInt)
		}
		function k() {
			var a = t;
			a++;
			a = a >= m ? 0 : a;
			e(a)
		}
		var g = {
			className: "oneByOne",
			sliderClassName: "oneByOne_item",
			easeType: "fadeInLeft",
			width: 960,
			height: 420,
			delay: 300,
			tolerance: 0.25,
			enableDrag: !0,
			showArrow: !0,
			showButton: !0,
			slideShow: !1,
			slideShowDelay: 3E3
		};
		a && c.extend(g, a);
		var n, l, t = -1,
		j = g.width,
		s = 0,
		i = !1,
		w = [],
		v,
		q = [],
		m = 0,
		r = 0,
		o,
		p;
		l = this;
		l.wrap('<div class="' + g.className + '"/>');
		n = l.parent();
		n.css("overflow", "hidden");
		l.find("." + g.sliderClassName).each(function(a) {
			c(this).hide();
			m++;
			c(this).css("left", j * a);
			q[a] = c(this)
		});
		l.bind("touchstart",
		function(a) {
			a.preventDefault();
			a = a.originalEvent.touches[0] || a.originalEvent.changedTouches[0];
			i || (i = !0, this.mouseX = a.pageX);
			o && o.fadeIn();
			p && p.fadeIn();
			return ! 1
		});
		l.bind("touchmove",
		function(a) {
			a.preventDefault();
			a = a.originalEvent.touches[0] || a.originalEvent.changedTouches[0];
			i && (s = a.pageX - this.mouseX, l.css("left", -t * j + s), g.slideShow && f());
			return ! 1
		});
		l.bind("touchend",
		function(a) {
			var b = t;
			a.preventDefault();
			i = !1;
			if (!s) return ! 1;
			var a = parseInt(g.width),
			c = a / 2; - s > c - a * g.tolerance ? (b++, b = b >= m ? m - 1 : b, e(b)) : s > c - a * g.tolerance ? (b--, e(0 > b ? 0 : b)) : (e(b), g.slideShow && h());
			s = 0;
			o && o.delay(400).fadeOut();
			p && p.delay(400).fadeOut();
			return ! 1
		});
		g.enableDrag && (l.mousedown(function(a) {
			i || (i = !0, this.mouseX = a.pageX);
			return ! 1
		}), l.mousemove(function(a) {
			i && (s = a.pageX - this.mouseX, l.css("left", -t * j + s), g.slideShow && f());
			return ! 1
		}), l.mouseup(function() {
			i = !1;
			var a = t;
			if (!s) return ! 1;
			var b = parseInt(g.width),
			c = b / 2; - s > c - b * g.tolerance ? (a++, a = a >= m ? m - 1 : a, e(a)) : s > c - b * g.tolerance ? (a--, e(0 > a ? 0 : a)) : (e(a), g.slideShow && h());
			s = 0;
			return ! 1
		}), l.mouseleave(function() {
			c(this).mouseup()
		}));
		n.mouseover(function() {
			o && o.show();
			/*o && o.fadeIn();*/
			/*p && p.fadeIn()*/
		});
		n.mouseleave(function() {
			o && o.show();
			/*o && o.fadeOut();*/
			/*p && p.fadeOut()*/
		});
		if (g.showButton) {
			a = c('<div class="buttonArea"><div class="buttonCon"></div></div>');
			n.append(a);
			o = a.find(".buttonCon");
			for (var u = 0; u < m; u++) o.append('<a class="theButton" rel="' + u + '">' + (u + 1) + "</a>").css("cursor", "pointer");
			c(".buttonCon a:eq(" + t + ")", a).addClass("active");
			c(".buttonCon a", a).bind("click",
			function() {
				if (c(this).hasClass("active")) return false;
				var a = c(this).attr("rel");
				e(a)
			})
		}
		g.showArrow && (p = c('<div class="arrowButton"><div class="prevArrow"></div><div class="nextArrow"></div></div>'), n.append(p), c(".nextArrow", p).bind("click",
		function() {
			k()
		}), c(".prevArrow", p).bind("click",
		function() {
			var a = t;
			a--;
			a = a < 0 ? m - 1 : a;
			e(a)
		}));
		o && o.show();
		/*o && o.hide();*/
		/*p && p.hide();*/
		e(0);
		g.slideShow && (slideShowInt = setInterval(function() {
			k()
		},
		g.slideShowDelay), l.data("interval", slideShowInt));
		return this
	}
})(jQuery); (function(c) {
	c.fn.touchwipe = function(b) {
		var d = {
			min_move_x: 20,
			min_move_y: 20,
			wipeLeft: function() {},
			wipeRight: function() {},
			wipeUp: function() {},
			wipeDown: function() {},
			preventDefaultEvents: !0
		};
		b && c.extend(d, b);
		this.each(function() {
			function a() {
				this.removeEventListener("touchmove", b);
				h = null;
				g = !1
			}
			function b(c) {
				d.preventDefaultEvents && c.preventDefault();
				if (g) {
					var e = h - c.touches[0].pageX,
					c = k - c.touches[0].pageY;
					Math.abs(e) >= d.min_move_x ? (a(), 0 < e ? d.wipeLeft() : d.wipeRight()) : Math.abs(c) >= d.min_move_y && (a(), 0 < c ? d.wipeDown() : d.wipeUp())
				}
			}
			function c(a) {
				1 == a.touches.length && (h = a.touches[0].pageX, k = a.touches[0].pageY, g = !0, this.addEventListener("touchmove", b, !1))
			}
			var h, k, g = !1;
			"ontouchstart" in document.documentElement && this.addEventListener("touchstart", c, !1)
		});
		return this
	}
})(jQuery); (function(c) {
	c.flexslider = function(b, d) {
		var a = c(b);
		c.data(b, "flexslider", a);
		a.init = function() {
			a.vars = c.extend({},
			c.flexslider.defaults, d);
			c.data(b, "flexsliderInit", !0);
			a.container = c(".slides", a).eq(0);
			a.slides = c(".slides:first > li", a);
			a.count = a.slides.length;
			a.animating = !1;
			a.currentSlide = a.vars.slideToStart;
			a.animatingTo = a.currentSlide;
			a.atEnd = 0 == a.currentSlide ? !0 : !1;
			a.eventType = "ontouchstart" in document.documentElement ? "touchstart": "click";
			a.cloneCount = 0;
			a.cloneOffset = 0;
			a.manualPause = !1;
			a.vertical = "vertical" == a.vars.slideDirection;
			a.prop = a.vertical ? "top": "marginLeft";
			a.args = {};
			a.transitions = "webkitTransition" in document.body.style && a.vars.useCSS;
			a.transitions && (a.prop = "-webkit-transform");
			"" != a.vars.controlsContainer && (a.controlsContainer = c(a.vars.controlsContainer).eq(c(".slides").index(a.container)), a.containerExists = 0 < a.controlsContainer.length);
			"" != a.vars.manualControls && (a.manualControls = c(a.vars.manualControls, a.containerExists ? a.controlsContainer: a), a.manualExists = 0 < a.manualControls.length);
			a.vars.randomize && (a.slides.sort(function() {
				return Math.round(Math.random()) - 0.5
			}), a.container.empty().append(a.slides));
			if ("slide" == a.vars.animation.toLowerCase()) {
				a.transitions && a.setTransition(0);
				a.css({
					overflow: "hidden"
				});
				a.vars.animationLoop && (a.cloneCount = 2, a.cloneOffset = 1, a.container.append(a.slides.filter(":first").clone().addClass("clone")).prepend(a.slides.filter(":last").clone().addClass("clone")));
				a.newSlides = c(".slides:first > li", a);
				var e = -1 * (a.currentSlide + a.cloneOffset);
				a.vertical ? (a.newSlides.css({
					display: "block",
					width: "100%",
					"float": "left"
				}), a.container.height(200 * (a.count + a.cloneCount) + "%").css("position", "absolute").width("100%"), setTimeout(function() {
					a.css({
						position: "relative"
					}).height(a.slides.filter(":first").height());
					a.args[a.prop] = a.transitions ? "translate3d(0," + e * a.height() + "px,0)": e * a.height() + "px";
					a.container.css(a.args)
				},
				100)) : (a.args[a.prop] = a.transitions ? "translate3d(" + e * a.width() + "px,0,0)": e * a.width() + "px", a.container.width(200 * (a.count + a.cloneCount) + "%").css(a.args), setTimeout(function() {
					a.newSlides.width(a.width()).css({
						"float": "left",
						display: "block"
					})
				},
				100))
			} else a.transitions = !1,
			a.slides.css({
				width: "100%",
				"float": "left",
				marginRight: "-100%"
			}).eq(a.currentSlide).fadeIn(a.vars.animationDuration);
			if (a.vars.controlNav) {
				if (a.manualExists) a.controlNav = a.manualControls;
				else {
					for (var f = c('<ol class="flex-control-nav"></ol>'), h = 1, k = 0; k < a.count; k++) f.append("<li><a>" + h + "</a></li>"),
					h++;
					a.containerExists ? (c(a.controlsContainer).append(f), a.controlNav = c(".flex-control-nav li a", a.controlsContainer)) : (a.append(f), a.controlNav = c(".flex-control-nav li a", a))
				}
				a.controlNav.eq(a.currentSlide).addClass("active");
				a.controlNav.bind(a.eventType,
				function(b) {
					b.preventDefault();
					if (!c(this).hasClass("active")) {
						a.controlNav.index(c(this)) > a.currentSlide ? a.direction = "next": a.direction = "prev";
						a.flexAnimate(a.controlNav.index(c(this)), a.vars.pauseOnAction)
					}
				})
			}
			a.vars.directionNav && (f = c('<ul class="flex-direction-nav"><li><a class="prev" href="#">' + a.vars.prevText + '</a></li><li><a class="next" href="#">' + a.vars.nextText + "</a></li></ul>"), a.containerExists ? (c(a.controlsContainer).append(f), a.directionNav = c(".flex-direction-nav li a", a.controlsContainer)) : (a.append(f), a.directionNav = c(".flex-direction-nav li a", a)), a.vars.animationLoop || (0 == a.currentSlide ? a.directionNav.filter(".prev").addClass("disabled") : a.currentSlide == a.count - 1 && a.directionNav.filter(".next").addClass("disabled")), a.directionNav.bind(a.eventType,
			function(b) {
				b.preventDefault();
				b = c(this).hasClass("next") ? a.getTarget("next") : a.getTarget("prev");
				a.canAdvance(b) && a.flexAnimate(b, a.vars.pauseOnAction)
			}));
			a.vars.keyboardNav && 1 == c("ul.slides").length && c(document).bind("keyup",
			function(b) {
				if (!a.animating && !(b.keyCode != 39 && b.keyCode != 37)) {
					if (b.keyCode == 39) var c = a.getTarget("next");
					else b.keyCode == 37 && (c = a.getTarget("prev"));
					a.canAdvance(c) && a.flexAnimate(c, a.vars.pauseOnAction)
				}
			});
			a.vars.mousewheel && (a.mousewheelEvent = /Firefox/i.test(navigator.userAgent) ? "DOMMouseScroll": "mousewheel", a.bind(a.mousewheelEvent,
			function(b) {
				b.preventDefault();
				b = b ? b: window.event;
				b = (b.detail ? b.detail * -1 : b.originalEvent.wheelDelta / 40) < 0 ? a.getTarget("next") : a.getTarget("prev");
				a.canAdvance(b) && a.flexAnimate(b, a.vars.pauseOnAction)
			}));
			a.vars.slideshow && (a.vars.pauseOnHover && a.vars.slideshow && a.hover(function() {
				a.pause()
			},
			function() {
				a.manualPause || a.resume()
			}), a.animatedSlides = setInterval(a.animateSlides, a.vars.slideshowSpeed));
			a.vars.pausePlay && (f = c('<div class="flex-pauseplay"><span></span></div>'), a.containerExists ? (a.controlsContainer.append(f), a.pausePlay = c(".flex-pauseplay span", a.controlsContainer)) : (a.append(f), a.pausePlay = c(".flex-pauseplay span", a)), f = a.vars.slideshow ? "pause": "play", a.pausePlay.addClass(f).text("pause" == f ? a.vars.pauseText: a.vars.playText), a.pausePlay.bind(a.eventType,
			function(b) {
				b.preventDefault();
				if (c(this).hasClass("pause")) {
					a.pause();
					a.manualPause = true
				} else {
					a.resume();
					a.manualPause = false
				}
			}));
			if ("ontouchstart" in document.documentElement && a.vars.touch) {
				var g, n, l, t, j, s, i = !1;
				a.each(function() {
					"ontouchstart" in document.documentElement && this.addEventListener("touchstart", w, false)
				});
				var w = function(b) {
					if (a.animating) b.preventDefault();
					else if (b.touches.length == 1) {
						a.pause();
						t = a.vertical ? a.height() : a.width();
						s = Number(new Date);
						l = a.vertical ? (a.currentSlide + a.cloneOffset) * a.height() : (a.currentSlide + a.cloneOffset) * a.width();
						g = a.vertical ? b.touches[0].pageY: b.touches[0].pageX;
						n = a.vertical ? b.touches[0].pageX: b.touches[0].pageY;
						a.setTransition(0);
						this.addEventListener("touchmove", v, false);
						this.addEventListener("touchend", q, false)
					}
				},
				v = function(b) {
					j = a.vertical ? g - b.touches[0].pageY: g - b.touches[0].pageX;
					i = a.vertical ? Math.abs(j) < Math.abs(b.touches[0].pageX - n) : Math.abs(j) < Math.abs(b.touches[0].pageY - n);
					if (!i) {
						b.preventDefault();
						if (a.vars.animation == "slide" && a.transitions) {
							a.vars.animationLoop || (j = j / (a.currentSlide == 0 && j < 0 || a.currentSlide == a.count - 1 && j > 0 ? Math.abs(j) / t + 2 : 1));
							a.args[a.prop] = a.vertical ? "translate3d(0," + ( - l - j) + "px,0)": "translate3d(" + ( - l - j) + "px,0,0)";
							a.container.css(a.args)
						}
					}
				},
				q = function() {
					a.animating = false;
					if (a.animatingTo == a.currentSlide && !i && j != null) {
						var b = j > 0 ? a.getTarget("next") : a.getTarget("prev");
						a.canAdvance(b) && Number(new Date) - s < 550 && Math.abs(j) > 20 || Math.abs(j) > t / 2 ? a.flexAnimate(b, a.vars.pauseOnAction) : a.vars.animation !== "fade" && a.flexAnimate(a.currentSlide, a.vars.pauseOnAction)
					}
					this.removeEventListener("touchmove", v, false);
					this.removeEventListener("touchend", q, false);
					l = j = n = g = null
				}
			}
			"slide" == a.vars.animation.toLowerCase() && c(window).resize(function() {
				if (!a.animating && a.is(":visible")) {
					if (a.vertical) {
						a.height(a.slides.filter(":first").height());
						a.args[a.prop] = -1 * (a.currentSlide + a.cloneOffset) * a.slides.filter(":first").height() + "px"
					} else {
						a.newSlides.width(a.width());
						a.args[a.prop] = -1 * (a.currentSlide + a.cloneOffset) * a.width() + "px"
					}
					if (a.transitions) {
						a.setTransition(0);
						a.args[a.prop] = a.vertical ? "translate3d(0," + a.args[a.prop] + ",0)": "translate3d(" + a.args[a.prop] + ",0,0)"
					}
					a.container.css(a.args)
				}
			});
			a.vars.start(a)
		};
		a.flexAnimate = function(b, c) {
			if (!a.animating && a.is(":visible")) if (a.animating = !0, a.animatingTo = b, a.vars.before(a), c && a.pause(), a.vars.controlNav && a.controlNav.removeClass("active").eq(b).addClass("active"), a.atEnd = 0 == b || b == a.count - 1 ? !0 : !1, !a.vars.animationLoop && a.vars.directionNav && (0 == b ? a.directionNav.removeClass("disabled").filter(".prev").addClass("disabled") : b == a.count - 1 ? a.directionNav.removeClass("disabled").filter(".next").addClass("disabled") : a.directionNav.removeClass("disabled")), !a.vars.animationLoop && b == a.count - 1 && (a.pause(), a.vars.end(a)), "slide" == a.vars.animation.toLowerCase()) {
				var d = a.vertical ? a.slides.filter(":first").height() : a.slides.filter(":first").width();
				a.slideString = 0 == a.currentSlide && b == a.count - 1 && a.vars.animationLoop && "next" != a.direction ? "0px": a.currentSlide == a.count - 1 && 0 == b && a.vars.animationLoop && "prev" != a.direction ? -1 * (a.count + 1) * d + "px": -1 * (b + a.cloneOffset) * d + "px";
				a.args[a.prop] = a.slideString;
				a.transitions ? (a.setTransition(a.vars.animationDuration), a.args[a.prop] = a.vertical ? "translate3d(0," + a.slideString + ",0)": "translate3d(" + a.slideString + ",0,0)", a.container.css(a.args).one("webkitTransitionEnd transitionend",
				function() {
					a.wrapup(d)
				})) : a.container.animate(a.args, a.vars.animationDuration,
				function() {
					a.wrapup(d)
				})
			} else a.slides.eq(a.currentSlide).fadeOut(a.vars.animationDuration),
			a.slides.eq(b).fadeIn(a.vars.animationDuration,
			function() {
				a.wrapup()
			})
		};
		a.wrapup = function(b) {
			"slide" == a.vars.animation && (0 == a.currentSlide && a.animatingTo == a.count - 1 && a.vars.animationLoop ? (a.args[a.prop] = -1 * a.count * b + "px", a.transitions && (a.setTransition(0), a.args[a.prop] = a.vertical ? "translate3d(0," + a.args[a.prop] + ",0)": "translate3d(" + a.args[a.prop] + ",0,0)"), a.container.css(a.args)) : a.currentSlide == a.count - 1 && (0 == a.animatingTo && a.vars.animationLoop) && (a.args[a.prop] = -1 * b + "px", a.transitions && (a.setTransition(0), a.args[a.prop] = a.vertical ? "translate3d(0," + a.args[a.prop] + ",0)": "translate3d(" + a.args[a.prop] + ",0,0)"), a.container.css(a.args)));
			a.animating = !1;
			a.currentSlide = a.animatingTo;
			a.vars.after(a)
		};
		a.animateSlides = function() {
			a.animating || a.flexAnimate(a.getTarget("next"))
		};
		a.pause = function() {
			clearInterval(a.animatedSlides);
			a.vars.pausePlay && a.pausePlay.removeClass("pause").addClass("play").text(a.vars.playText)
		};
		a.resume = function() {
			a.animatedSlides = setInterval(a.animateSlides, a.vars.slideshowSpeed);
			a.vars.pausePlay && a.pausePlay.removeClass("play").addClass("pause").text(a.vars.pauseText)
		};
		a.canAdvance = function(b) {
			return ! a.vars.animationLoop && a.atEnd ? 0 == a.currentSlide && b == a.count - 1 && "next" != a.direction ? !1 : a.currentSlide == a.count - 1 && 0 == b && "next" == a.direction ? !1 : !0 : !0
		};
		a.getTarget = function(b) {
			a.direction = b;
			return "next" == b ? a.currentSlide == a.count - 1 ? 0 : a.currentSlide + 1 : 0 == a.currentSlide ? a.count - 1 : a.currentSlide - 1
		};
		a.setTransition = function(b) {
			a.container.css({
				"-webkit-transition-duration": b / 1E3 + "s"
			})
		};
		a.init()
	};
	c.flexslider.defaults = {
		animation: "fade",
		slideDirection: "horizontal",
		slideshow: !0,
		slideshowSpeed: 7E3,
		animationDuration: 600,
		directionNav: !0,
		controlNav: !0,
		keyboardNav: !0,
		mousewheel: !1,
		prevText: "Previous",
		nextText: "Next",
		pausePlay: !1,
		pauseText: "Pause",
		playText: "Play",
		randomize: !1,
		slideToStart: 0,
		animationLoop: !0,
		pauseOnAction: !0,
		pauseOnHover: !1,
		useCSS: !0,
		touch: !0,
		controlsContainer: "",
		manualControls: "",
		start: function() {},
		before: function() {},
		after: function() {},
		end: function() {}
	};
	c.fn.flexslider = function(b) {
		return this.each(function() {
			var d = c(this).find(".slides > li");
			1 === d.length ? (d.find(".slides > li").fadeIn(400), b && b.start && b.start(c(this))) : !0 != c(this).data("flexsliderInit") && new c.flexslider(this, b)
		})
	}
})(jQuery); (function(c, b) {
	var d = c.document,
	a = c.Modernizr,
	e = function(a) {
		return a.charAt(0).toUpperCase() + a.slice(1)
	},
	f = ["Moz", "Webkit", "O", "Ms"],
	h = function(a) {
		var b = d.documentElement.style,
		c;
		if ("string" == typeof b[a]) return a;
		for (var a = e(a), y = 0, i = f.length; y < i; y++) if (c = f[y] + a, "string" == typeof b[c]) return c
	},
	k = h("transform"),
	g = h("transitionProperty"),
	n = {
		csstransforms: function() {
			return !! k
		},
		csstransforms3d: function() {
			var a = !!h("perspective");
			if (a) {
				var a = "@media (" + " -o- -moz- -ms- -webkit- -khtml-".split(" ").join("transform-3d),(") + "modernizr)",
				c = b("<style>" + a + "{#modernizr{height:3px}}</style>").appendTo("head"),
				d = b('<div id="modernizr" />').appendTo("html"),
				a = 3 === d.height();
				d.remove();
				c.remove()
			}
			return a
		},
		csstransitions: function() {
			return !! g
		}
	},
	l;
	if (a) for (l in n) a.hasOwnProperty(l) || a.addTest(l, n[l]);
	else {
		var a = c.Modernizr = {
			_version: "1.6ish: miniModernizr for Isotope"
		},
		t = " ",
		j;
		for (l in n) j = n[l](),
		a[l] = j,
		t += " " + (j ? "": "no-") + l;
		b("html").addClass(t)
	}
	if (a.csstransforms) {
		var s = a.csstransforms3d ? {
			translate: function(a) {
				return "translate3d(" + a[0] + "px, " + a[1] + "px, 0) "
			},
			scale: function(a) {
				return "scale3d(" + a + ", " + a + ", 1) "
			}
		}: {
			translate: function(a) {
				return "translate(" + a[0] + "px, " + a[1] + "px) "
			},
			scale: function(a) {
				return "scale(" + a + ") "
			}
		},
		i = function(a, c, d) {
			var e = b.data(a, "isoTransform") || {},
			i = {},
			f,
			g = {};
			i[c] = d;
			b.extend(e, i);
			for (f in e) c = e[f],
			g[f] = s[f](c);
			f = (g.translate || "") + (g.scale || "");
			b.data(a, "isoTransform", e);
			a.style[k] = f
		};
		b.cssNumber.scale = !0;
		b.cssHooks.scale = {
			set: function(a, b) {
				i(a, "scale", b)
			},
			get: function(a) {
				return (a = b.data(a, "isoTransform")) && a.scale ? a.scale: 1
			}
		};
		b.fx.step.scale = function(a) {
			b.cssHooks.scale.set(a.elem, a.now + a.unit)
		};
		b.cssNumber.translate = !0;
		b.cssHooks.translate = {
			set: function(a, b) {
				i(a, "translate", b)
			},
			get: function(a) {
				return (a = b.data(a, "isoTransform")) && a.translate ? a.translate: [0, 0]
			}
		}
	}
	var w, v;
	a.csstransitions && (w = {
		WebkitTransitionProperty: "webkitTransitionEnd",
		MozTransitionProperty: "transitionend",
		OTransitionProperty: "oTransitionEnd",
		transitionProperty: "transitionEnd"
	} [g], v = h("transitionDuration"));
	var q = b.event,
	m;
	q.special.smartresize = {
		setup: function() {
			b(this).bind("resize", q.special.smartresize.handler)
		},
		teardown: function() {
			b(this).unbind("resize", q.special.smartresize.handler)
		},
		handler: function(a, b) {
			var c = this,
			d = arguments;
			a.type = "smartresize";
			m && clearTimeout(m);
			m = setTimeout(function() {
				jQuery.event.handle.apply(c, d)
			},
			"execAsap" === b ? 0 : 100)
		}
	};
	b.fn.smartresize = function(a) {
		return a ? this.bind("smartresize", a) : this.trigger("smartresize", ["execAsap"])
	};
	b.Isotope = function(a, c, d) {
		this.element = b(c);
		this._create(a);
		this._init(d)
	};
	var r = ["width", "height"],
	o = b(c);
	b.Isotope.settings = {
		resizable: !0,
		layoutMode: "masonry",
		containerClass: "isotope",
		itemClass: "isotope-item",
		hiddenClass: "isotope-hidden",
		hiddenStyle: {
			opacity: 0,
			scale: 0.0010
		},
		visibleStyle: {
			opacity: 1,
			scale: 1
		},
		containerStyle: {
			position: "relative",
			overflow: "hidden"
		},
		animationEngine: "best-available",
		animationOptions: {
			queue: !1,
			duration: 800
		},
		sortBy: "original-order",
		sortAscending: !0,
		resizesContainer: !0,
		transformsEnabled: !b.browser.opera,
		itemPositionDataEnabled: !1
	};
	b.Isotope.prototype = {
		_create: function(a) {
			this.options = b.extend({},
			b.Isotope.settings, a);
			this.styleQueue = [];
			this.elemCount = 0;
			a = this.element[0].style;
			this.originalStyle = {};
			var c = r.slice(0),
			d;
			for (d in this.options.containerStyle) c.push(d);
			for (var e = 0,
			i = c.length; e < i; e++) d = c[e],
			this.originalStyle[d] = a[d] || "";
			this.element.css(this.options.containerStyle);
			this._updateAnimationEngine();
			this._updateUsingTransforms();
			this.options.getSortData = b.extend(this.options.getSortData, {
				"original-order": function(a, b) {
					return b.elemCount++,
					b.elemCount
				},
				random: function() {
					return Math.random()
				}
			});
			this.reloadItems();
			this.offset = {
				left: parseInt(this.element.css("padding-left") || 0, 10),
				top: parseInt(this.element.css("padding-top") || 0, 10)
			};
			var f = this;
			setTimeout(function() {
				f.element.addClass(f.options.containerClass)
			},
			0);
			this.options.resizable && o.bind("smartresize.isotope",
			function() {
				f.resize()
			});
			this.element.delegate("." + this.options.hiddenClass, "click",
			function() {
				return ! 1
			})
		},
		_getAtoms: function(a) {
			var b = this.options.itemSelector,
			a = b ? a.filter(b).add(a.find(b)) : a,
			b = {
				position: "absolute"
			};
			return this.usingTransforms && (b.left = 0, b.top = 0),
			a.css(b).addClass(this.options.itemClass),
			this.updateSortData(a, !0),
			a
		},
		_init: function(a) {
			this.$filteredAtoms = this._filter(this.$allAtoms);
			this._sort();
			this.reLayout(a)
		},
		option: function(a) {
			if (b.isPlainObject(a)) {
				this.options = b.extend(!0, this.options, a);
				for (var c in a) a = "_update" + e(c),
				this[a] && this[a]()
			}
		},
		_updateAnimationEngine: function() {
			var b;
			switch (this.options.animationEngine.toLowerCase().replace(/[ _\-]/g, "")) {
			case "css":
			case "none":
				b = !1;
				break;
			case "jquery":
				b = !0;
				break;
			default:
				b = !a.csstransitions
			}
			this.isUsingJQueryAnimation = b;
			this._updateUsingTransforms()
		},
		_updateTransformsEnabled: function() {
			this._updateUsingTransforms()
		},
		_updateUsingTransforms: function() {
			var b = this.usingTransforms = this.options.transformsEnabled && a.csstransforms && a.csstransitions && !this.isUsingJQueryAnimation;
			b || (delete this.options.hiddenStyle.scale, delete this.options.visibleStyle.scale);
			this.getPositionStyles = b ? this._translate: this._positionAbs
		},
		_filter: function(a) {
			var b = "" === this.options.filter ? "*": this.options.filter;
			if (!b) return a;
			var c = this.options.hiddenClass,
			d = "." + c,
			e = a.filter(d),
			i = e;
			"*" !== b && (i = e.filter(b), d = a.not(d).not(b).addClass(c), this.styleQueue.push({
				$el: d,
				style: this.options.hiddenStyle
			}));
			return this.styleQueue.push({
				$el: i,
				style: this.options.visibleStyle
			}),
			i.removeClass(c),
			a.filter(b)
		},
		updateSortData: function(a, c) {
			var d = this,
			e = this.options.getSortData,
			i, f;
			a.each(function() {
				i = b(this);
				f = {};
				for (var a in e) ! c && "original-order" === a ? f[a] = b.data(this, "isotope-sort-data")[a] : f[a] = e[a](i, d);
				b.data(this, "isotope-sort-data", f)
			})
		},
		_sort: function() {
			var a = this.options.sortBy,
			b = this._getSorter,
			c = this.options.sortAscending ? 1 : -1;
			this.$filteredAtoms.sort(function(d, e) {
				var i = b(d, a),
				f = b(e, a);
				return i === f && "original-order" !== a && (i = b(d, "original-order"), f = b(e, "original-order")),
				(i > f ? 1 : i < f ? -1 : 0) * c
			})
		},
		_getSorter: function(a, c) {
			return b.data(a, "isotope-sort-data")[c]
		},
		_translate: function(a, b) {
			return {
				translate: [a, b]
			}
		},
		_positionAbs: function(a, b) {
			return {
				left: a,
				top: b
			}
		},
		_pushPosition: function(a, b, c) {
			var b = Math.round(b + this.offset.left),
			c = Math.round(c + this.offset.top),
			d = this.getPositionStyles(b, c);
			this.styleQueue.push({
				$el: a,
				style: d
			});
			this.options.itemPositionDataEnabled && a.data("isotope-item-position", {
				x: b,
				y: c
			})
		},
		layout: function(a, b) {
			var c = this.options.layoutMode;
			this["_" + c + "Layout"](a);
			this.options.resizesContainer && (c = this["_" + c + "GetContainerSize"](), this.styleQueue.push({
				$el: this.element,
				style: c
			}));
			this._processStyleQueue(a, b);
			this.isLaidOut = !0
		},
		_processStyleQueue: function(c, d) {
			var e = this.isLaidOut ? this.isUsingJQueryAnimation ? "animate": "css": "css",
			i = this.options.animationOptions,
			f = this.options.onLayout,
			g,
			h,
			q,
			s;
			h = function(a, b) {
				b.$el[e](b.style, i)
			};
			if (this._isInserting && this.isUsingJQueryAnimation) h = function(a, b) {
				g = b.$el.hasClass("no-transition") ? "css": e;
				b.$el[g](b.style, i)
			};
			else if (d || f || i.complete) {
				var n = !1,
				l = [d, f, i.complete],
				m = this;
				q = !0;
				s = function() {
					if (!n) {
						for (var a, b = 0,
						d = l.length; b < d; b++) a = l[b],
						"function" == typeof a && a.call(m.element, c, m);
						n = !0
					}
				};
				if (this.isUsingJQueryAnimation && "animate" === e) i.complete = s,
				q = !1;
				else if (a.csstransitions) {
					for (var f = 0,
					k = this.styleQueue[0], k = k && k.$el; ! k || !k.length;) {
						k = this.styleQueue[f++];
						if (!k) return;
						k = k.$el
					}
					0 < parseFloat(getComputedStyle(k[0])[v]) && (h = function(a, b) {
						b.$el[e](b.style, i).one(w, s)
					},
					q = !1)
				}
			}
			b.each(this.styleQueue, h);
			q && s();
			this.styleQueue = []
		},
		resize: function() {
			this["_" + this.options.layoutMode + "ResizeChanged"]() && this.reLayout()
		},
		reLayout: function(a) {
			this["_" + this.options.layoutMode + "Reset"]();
			this.layout(this.$filteredAtoms, a)
		},
		addItems: function(a, b) {
			var c = this._getAtoms(a);
			this.$allAtoms = this.$allAtoms.add(c);
			b && b(c)
		},
		insert: function(a, b) {
			this.element.append(a);
			var c = this;
			this.addItems(a,
			function(a) {
				a = c._filter(a);
				c._addHideAppended(a);
				c._sort();
				c.reLayout();
				c._revealAppended(a, b)
			})
		},
		appended: function(a, b) {
			var c = this;
			this.addItems(a,
			function(a) {
				c._addHideAppended(a);
				c.layout(a);
				c._revealAppended(a, b)
			})
		},
		_addHideAppended: function(a) {
			this.$filteredAtoms = this.$filteredAtoms.add(a);
			a.addClass("no-transition");
			this._isInserting = !0;
			this.styleQueue.push({
				$el: a,
				style: this.options.hiddenStyle
			})
		},
		_revealAppended: function(a, b) {
			var c = this;
			setTimeout(function() {
				a.removeClass("no-transition");
				c.styleQueue.push({
					$el: a,
					style: c.options.visibleStyle
				});
				c._isInserting = !1;
				c._processStyleQueue(a, b)
			},
			10)
		},
		reloadItems: function() {
			this.$allAtoms = this._getAtoms(this.element.children())
		},
		remove: function(a, b) {
			var c = this,
			d = function() {
				c.$allAtoms = c.$allAtoms.not(a);
				a.remove();
				b && b.call(c.element)
			};
			a.filter(":not(." + this.options.hiddenClass + ")").length ? (this.styleQueue.push({
				$el: a,
				style: this.options.hiddenStyle
			}), this.$filteredAtoms = this.$filteredAtoms.not(a), this._sort(), this.reLayout(d)) : d()
		},
		shuffle: function(a) {
			this.updateSortData(this.$allAtoms);
			this.options.sortBy = "random";
			this._sort();
			this.reLayout(a)
		},
		destroy: function() {
			var a = this.usingTransforms,
			b = this.options;
			this.$allAtoms.removeClass(b.hiddenClass + " " + b.itemClass).each(function() {
				var b = this.style;
				b.position = "";
				b.top = "";
				b.left = "";
				b.opacity = "";
				a && (b[k] = "")
			});
			var c = this.element[0].style,
			d;
			for (d in this.originalStyle) c[d] = this.originalStyle[d];
			this.element.unbind(".isotope").undelegate("." + b.hiddenClass, "click").removeClass(b.containerClass).removeData("isotope");
			o.unbind(".isotope")
		},
		_getSegments: function(a) {
			var b = this.options.layoutMode,
			c = a ? "rowHeight": "columnWidth",
			d = a ? "height": "width",
			a = a ? "rows": "cols",
			i = this.element[d](),
			d = this.options[b] && this.options[b][c] || this.$filteredAtoms["outer" + e(d)](!0) || i,
			i = Math.floor(i / d),
			i = Math.max(i, 1);
			this[b][a] = i;
			this[b][c] = d
		},
		_checkIfSegmentsChanged: function(a) {
			var b = this.options.layoutMode,
			c = a ? "rows": "cols",
			d = this[b][c];
			return this._getSegments(a),
			this[b][c] !== d
		},
		_masonryReset: function() {
			this.masonry = {};
			this._getSegments();
			var a = this.masonry.cols;
			for (this.masonry.colYs = []; a--;) this.masonry.colYs.push(0)
		},
		_masonryLayout: function(a) {
			var c = this,
			d = c.masonry;
			a.each(function() {
				var a = b(this),
				e = Math.ceil(a.outerWidth(!0) / d.columnWidth),
				e = Math.min(e, d.cols);
				if (1 === e) c._masonryPlaceBrick(a, d.colYs);
				else {
					var i = d.cols + 1 - e,
					f = [],
					g,
					h;
					for (h = 0; h < i; h++) g = d.colYs.slice(h, h + e),
					f[h] = Math.max.apply(Math, g);
					c._masonryPlaceBrick(a, f)
				}
			})
		},
		_masonryPlaceBrick: function(a, b) {
			for (var c = Math.min.apply(Math, b), d = 0, e = 0, i = b.length; e < i; e++) if (b[e] === c) {
				d = e;
				break
			}
			this._pushPosition(a, this.masonry.columnWidth * d, c);
			c += a.outerHeight(!0);
			i = this.masonry.cols + 1 - i;
			for (e = 0; e < i; e++) this.masonry.colYs[d + e] = c
		},
		_masonryGetContainerSize: function() {
			return {
				height: Math.max.apply(Math, this.masonry.colYs)
			}
		},
		_masonryResizeChanged: function() {
			return this._checkIfSegmentsChanged()
		},
		_fitRowsReset: function() {
			this.fitRows = {
				x: 0,
				y: 0,
				height: 0
			}
		},
		_fitRowsLayout: function(a) {
			var c = this,
			d = this.element.width(),
			e = this.fitRows;
			a.each(function() {
				var a = b(this),
				i = a.outerWidth(!0),
				f = a.outerHeight(!0);
				0 !== e.x && i + e.x > d && (e.x = 0, e.y = e.height);
				c._pushPosition(a, e.x, e.y);
				e.height = Math.max(e.y + f, e.height);
				e.x += i
			})
		},
		_fitRowsGetContainerSize: function() {
			return {
				height: this.fitRows.height
			}
		},
		_fitRowsResizeChanged: function() {
			return ! 0
		},
		_cellsByRowReset: function() {
			this.cellsByRow = {
				index: 0
			};
			this._getSegments();
			this._getSegments(!0)
		},
		_cellsByRowLayout: function(a) {
			var c = this,
			d = this.cellsByRow;
			a.each(function() {
				var a = b(this),
				e = Math.floor(d.index / d.cols),
				i = (d.index % d.cols + 0.5) * d.columnWidth - a.outerWidth(!0) / 2,
				e = (e + 0.5) * d.rowHeight - a.outerHeight(!0) / 2;
				c._pushPosition(a, i, e);
				d.index++
			})
		},
		_cellsByRowGetContainerSize: function() {
			return {
				height: Math.ceil(this.$filteredAtoms.length / this.cellsByRow.cols) * this.cellsByRow.rowHeight + this.offset.top
			}
		},
		_cellsByRowResizeChanged: function() {
			return this._checkIfSegmentsChanged()
		},
		_straightDownReset: function() {
			this.straightDown = {
				y: 0
			}
		},
		_straightDownLayout: function(a) {
			var c = this;
			a.each(function() {
				var a = b(this);
				c._pushPosition(a, 0, c.straightDown.y);
				c.straightDown.y += a.outerHeight(!0)
			})
		},
		_straightDownGetContainerSize: function() {
			return {
				height: this.straightDown.y
			}
		},
		_straightDownResizeChanged: function() {
			return ! 0
		},
		_masonryHorizontalReset: function() {
			this.masonryHorizontal = {};
			this._getSegments(!0);
			var a = this.masonryHorizontal.rows;
			for (this.masonryHorizontal.rowXs = []; a--;) this.masonryHorizontal.rowXs.push(0)
		},
		_masonryHorizontalLayout: function(a) {
			var c = this,
			d = c.masonryHorizontal;
			a.each(function() {
				var a = b(this),
				e = Math.ceil(a.outerHeight(!0) / d.rowHeight),
				e = Math.min(e, d.rows);
				if (1 === e) c._masonryHorizontalPlaceBrick(a, d.rowXs);
				else {
					var i = d.rows + 1 - e,
					f = [],
					g,
					h;
					for (h = 0; h < i; h++) g = d.rowXs.slice(h, h + e),
					f[h] = Math.max.apply(Math, g);
					c._masonryHorizontalPlaceBrick(a, f)
				}
			})
		},
		_masonryHorizontalPlaceBrick: function(a, b) {
			for (var c = Math.min.apply(Math, b), d = 0, e = 0, i = b.length; e < i; e++) if (b[e] === c) {
				d = e;
				break
			}
			this._pushPosition(a, c, this.masonryHorizontal.rowHeight * d);
			c += a.outerWidth(!0);
			i = this.masonryHorizontal.rows + 1 - i;
			for (e = 0; e < i; e++) this.masonryHorizontal.rowXs[d + e] = c
		},
		_masonryHorizontalGetContainerSize: function() {
			return {
				width: Math.max.apply(Math, this.masonryHorizontal.rowXs)
			}
		},
		_masonryHorizontalResizeChanged: function() {
			return this._checkIfSegmentsChanged(!0)
		},
		_fitColumnsReset: function() {
			this.fitColumns = {
				x: 0,
				y: 0,
				width: 0
			}
		},
		_fitColumnsLayout: function(a) {
			var c = this,
			d = this.element.height(),
			e = this.fitColumns;
			a.each(function() {
				var a = b(this),
				i = a.outerWidth(!0),
				f = a.outerHeight(!0);
				0 !== e.y && f + e.y > d && (e.x = e.width, e.y = 0);
				c._pushPosition(a, e.x, e.y);
				e.width = Math.max(e.x + i, e.width);
				e.y += f
			})
		},
		_fitColumnsGetContainerSize: function() {
			return {
				width: this.fitColumns.width
			}
		},
		_fitColumnsResizeChanged: function() {
			return ! 0
		},
		_cellsByColumnReset: function() {
			this.cellsByColumn = {
				index: 0
			};
			this._getSegments();
			this._getSegments(!0)
		},
		_cellsByColumnLayout: function(a) {
			var c = this,
			d = this.cellsByColumn;
			a.each(function() {
				var a = b(this),
				e = d.index % d.rows,
				i = (Math.floor(d.index / d.rows) + 0.5) * d.columnWidth - a.outerWidth(!0) / 2,
				e = (e + 0.5) * d.rowHeight - a.outerHeight(!0) / 2;
				c._pushPosition(a, i, e);
				d.index++
			})
		},
		_cellsByColumnGetContainerSize: function() {
			return {
				width: Math.ceil(this.$filteredAtoms.length / this.cellsByColumn.rows) * this.cellsByColumn.columnWidth
			}
		},
		_cellsByColumnResizeChanged: function() {
			return this._checkIfSegmentsChanged(!0)
		},
		_straightAcrossReset: function() {
			this.straightAcross = {
				x: 0
			}
		},
		_straightAcrossLayout: function(a) {
			var c = this;
			a.each(function() {
				var a = b(this);
				c._pushPosition(a, c.straightAcross.x, 0);
				c.straightAcross.x += a.outerWidth(!0)
			})
		},
		_straightAcrossGetContainerSize: function() {
			return {
				width: this.straightAcross.x
			}
		},
		_straightAcrossResizeChanged: function() {
			return ! 0
		}
	};
	b.fn.imagesLoaded = function(a) {
		function c() {
			a.call(e, i)
		}
		function d(a) {
			a = a.target;
			a.src !== g && -1 === b.inArray(a, h) && (h.push(a), 0 >= --f && (setTimeout(c), i.unbind(".imagesLoaded", d)))
		}
		var e = this,
		i = e.find("img").add(e.filter("img")),
		f = i.length,
		g = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==",
		h = [];
		return f || c(),
		i.bind("load.imagesLoaded error.imagesLoaded", d).each(function() {
			var a = this.src;
			this.src = g;
			this.src = a
		}),
		e
	};
	b.fn.isotope = function(a, d) {
		if ("string" == typeof a) {
			var e = Array.prototype.slice.call(arguments, 1);
			this.each(function() {
				var d = b.data(this, "isotope");
				d ? !b.isFunction(d[a]) || "_" === a.charAt(0) ? c.console && c.console.error("no such method '" + a + "' for isotope instance") : d[a].apply(d, e) : c.console && c.console.error("cannot call methods on isotope prior to initialization; attempted to call method '" + a + "'")
			})
		} else this.each(function() {
			var c = b.data(this, "isotope");
			c ? (c.option(a), c._init(d)) : b.data(this, "isotope", new b.Isotope(a, this, d))
		});
		return this
	}
})(window, jQuery); (function(c) {
	function b(a) {
		return "object" == typeof a ? a: {
			top: a,
			left: a
		}
	}
	var d = c.scrollTo = function(a, b, d) {
		c(window).scrollTo(a, b, d)
	};
	d.defaults = {
		axis: "y",
		duration: 1
	};
	d.window = function() {
		return c(window).scrollable()
	};
	c.fn.scrollable = function() {
		return this.map(function() {
			var a = this.parentWindow || this.defaultView,
			a = "#document" == this.nodeName ? a.frameElement || a: this,
			b = a.contentDocument || (a.contentWindow || a).document,
			d = a.setInterval;
			return "IFRAME" == a.nodeName || d && c.browser.safari ? b.body: d ? b.documentElement: this
		})
	};
	c.fn.scrollTo = function(a, e, f) {
		"object" == typeof e && (f = e, e = 0);
		"function" == typeof f && (f = {
			onAfter: f
		});
		f = c.extend({},
		d.defaults, f);
		e = e || f.speed || f.duration;
		f.queue = f.queue && 1 < f.axis.length;
		f.queue && (e /= 2);
		f.offset = b(f.offset);
		f.over = b(f.over);
		return this.scrollable().each(function() {
			function d(b) {
				n.animate(j, e, f.easing, b &&
				function() {
					b.call(this, a, f)
				})
			}
			function k(a) {
				var a = "scroll" + a,
				b = g.ownerDocument;
				return s ? Math.max(b.documentElement[a], b.body[a]) : g[a]
			}
			var g = this,
			n = c(g),
			l = a,
			t,
			j = {},
			s = n.is("html,body");
			switch (typeof l) {
			case "number":
			case "string":
				if (/^([+-]=)?\d+(px)?$/.test(l)) {
					l = b(l);
					break
				}
				l = c(l, this);
			case "object":
				if (l.is || l.style) t = (l = c(l)).offset()
			}
			c.each(f.axis.split(""),
			function(a, b) {
				var c = b == "x" ? "Left": "Top",
				e = c.toLowerCase(),
				m = "scroll" + c,
				r = g[m],
				o = b == "x" ? "Width": "Height",
				p = o.toLowerCase();
				if (t) {
					j[m] = t[e] + (s ? 0 : r - n.offset()[e]);
					if (f.margin) {
						j[m] = j[m] - (parseInt(l.css("margin" + c)) || 0);
						j[m] = j[m] - (parseInt(l.css("border" + c + "Width")) || 0)
					}
					j[m] = j[m] + (f.offset[e] || 0);
					f.over[e] && (j[m] = j[m] + l[p]() * f.over[e])
				} else j[m] = l[e];
				/^\d+$/.test(j[m]) && (j[m] = j[m] <= 0 ? 0 : Math.min(j[m], k(o)));
				if (!a && f.queue) {
					r != j[m] && d(f.onAfterFirst);
					delete j[m]
				}
			});
			d(f.onAfter)
		}).end()
	}
})(jQuery);
jQuery.fn.highlightFade = function(c) {
	var b = c && c.constructor == String ? {
		start: c
	}: c || {},
	d = jQuery.highlightFade.defaults,
	a = b.interval || d.interval,
	e = b.attr || d.attr,
	c = {
		linear: function(a, b, c, d) {
			return parseInt(a + d / c * (b - a))
		},
		sinusoidal: function(a, b, c, d) {
			return parseInt(a + Math.sin(90 * (d / c) * (Math.PI / 180)) * (b - a))
		},
		exponential: function(a, b, c, d) {
			return parseInt(a + Math.pow(d / c, 2) * (b - a))
		}
	},
	f = b.iterator && b.iterator.constructor == Function ? b.iterator: c[b.iterator] || c[d.iterator] || c.linear;
	d.iterator && d.iterator.constructor == Function && (f = d.iterator);
	return this.each(function() {
		this.highlighting || (this.highlighting = {});
		var c = this.highlighting[e] ? this.highlighting[e].end: jQuery.highlightFade.getBaseValue(this, e) || [255, 255, 255],
		k = jQuery.highlightFade.getRGB(b.start || b.colour || b.color || d.start || [255, 255, 128]),
		g = jQuery.speed(b.speed || d.speed),
		n = b["final"] || this.highlighting[e] && this.highlighting[e].orig ? this.highlighting[e].orig: jQuery.curCSS(this, e);
		if (b.end || d.end) n = jQuery.highlightFade.asRGBString(c = jQuery.highlightFade.getRGB(b.end || d.end));
		"undefined" != typeof b["final"] && (n = b["final"]);
		this.highlighting[e] && this.highlighting[e].timer && window.clearInterval(this.highlighting[e].timer);
		this.highlighting[e] = {
			steps: g.duration / a,
			interval: a,
			currentStep: 0,
			start: k,
			end: c,
			orig: n,
			attr: e
		};
		jQuery.highlightFade(this, e, b.complete, f)
	})
};
jQuery.highlightFade = function(c, b, d, a) {
	c.highlighting[b].timer = window.setInterval(function() {
		var e = a(c.highlighting[b].start[0], c.highlighting[b].end[0], c.highlighting[b].steps, c.highlighting[b].currentStep),
		f = a(c.highlighting[b].start[1], c.highlighting[b].end[1], c.highlighting[b].steps, c.highlighting[b].currentStep),
		h = a(c.highlighting[b].start[2], c.highlighting[b].end[2], c.highlighting[b].steps, c.highlighting[b].currentStep);
		jQuery(c).css(b, jQuery.highlightFade.asRGBString([e, f, h]));
		c.highlighting[b].currentStep++>=c.highlighting[b].steps && (jQuery(c).css(b, c.highlighting[b].orig || ""), window.clearInterval(c.highlighting[b].timer), c.highlighting[b] = null, d && d.constructor == Function && d.call(c))
	},
	c.highlighting[b].interval)
};
jQuery.highlightFade.defaults = {
	start: [255, 255, 128],
	interval: 50,
	speed: 400,
	attr: "backgroundColor"
};
jQuery.highlightFade.getRGB = function(c, b) {
	var d;
	return c && c.constructor == Array && 3 == c.length ? c: (d = /rgb\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*\)/.exec(c)) ? [parseInt(d[1]), parseInt(d[2]), parseInt(d[3])] : (d = /rgb\(\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*\)/.exec(c)) ? [2.55 * parseFloat(d[1]), 2.55 * parseFloat(d[2]), 2.55 * parseFloat(d[3])] : (d = /#([a-fA-F0-9]{2})([a-fA-F0-9]{2})([a-fA-F0-9]{2})/.exec(c)) ? [parseInt("0x" + d[1]), parseInt("0x" + d[2]), parseInt("0x" + d[3])] : (d = /#([a-fA-F0-9])([a-fA-F0-9])([a-fA-F0-9])/.exec(c)) ? [parseInt("0x" + d[1] + d[1]), parseInt("0x" + d[2] + d[2]), parseInt("0x" + d[3] + d[3])] : jQuery.highlightFade.checkColorName(c) || b || null
};
jQuery.highlightFade.asRGBString = function(c) {
	return "rgb(" + c.join(",") + ")"
};
jQuery.highlightFade.getBaseValue = function(c, b, d) {
	var a, e, d = d || !1;
	e = b = b || jQuery.highlightFade.defaults.attr;
	do {
		a = jQuery(c).css(e || "backgroundColor");
		if ("" != a && "transparent" != a || "body" == c.tagName.toLowerCase() || !d && c.highlighting && c.highlighting[b] && c.highlighting[b].end) break;
		e = !1
	} while ( c = c . parentNode ); ! d && (c.highlighting && c.highlighting[b] && c.highlighting[b].end) && (a = c.highlighting[b].end);
	if (void 0 == a || "" == a || "transparent" == a) a = [255, 255, 255];
	return jQuery.highlightFade.getRGB(a)
};
jQuery.highlightFade.checkColorName = function(c) {
	if (!c) return null;
	switch (c.replace(/^\s*|\s*$/g, "").toLowerCase()) {
	case "aqua":
		return [0, 255, 255];
	case "black":
		return [0, 0, 0];
	case "blue":
		return [0, 0, 255];
	case "fuchsia":
		return [255, 0, 255];
	case "gray":
		return [128, 128, 128];
	case "green":
		return [0, 128, 0];
	case "lime":
		return [0, 255, 0];
	case "maroon":
		return [128, 0, 0];
	case "navy":
		return [0, 0, 128];
	case "olive":
		return [128, 128, 0];
	case "purple":
		return [128, 0, 128];
	case "red":
		return [255, 0, 0];
	case "silver":
		return [192, 192, 192];
	case "teal":
		return [0, 128, 128];
	case "white":
		return [255, 255, 255];
	case "yellow":
		return [255, 255, 0]
	}
}; (function(c) {
	c.fn.countdown = function(b) {
		var d = {
			date: new Date,
			updateTime: 1E3,
			htmlTemplate: '%{d} <span class="cd-time">days</span> %{h} <span class="cd-time">hours</span> %{m} <span class="cd-time">mins</span> %{s} <span class="cd-time">sec</span>',
			minus: !1,
			onChange: null,
			onComplete: null,
			onResume: null,
			onPause: null,
			leadingZero: !1,
			offset: null,
			direction: "down"
		},
		a = [].slice,
		e = Math.floor,
		f = /(%\{d\}|%\{h\}|%\{m\}|%\{s\})/g,
		h = /%\{d\}/,
		k = /%\{h\}/,
		g = /%\{m\}/,
		n = /%\{s\}/,
		l = function(a) {
			var b = 0,
			c = new Date,
			a = 36E5 * (a || 0),
			b = c.getTime() - 36E5 * ( - c.getTimezoneOffset() / 60),
			a = c.setTime(b + a);
			return new Date(a)
		},
		t = function() {
			var a, b, c, d, q, m, j, o = this.data("jcdSettings");
			if (o && (a = o.htmlTemplate, b = null === o.offset ? new Date: l(o.offset), c = new Date(o.date), d = ("down" === o.direction ? c.getTime() - b.getTime() : b.getTime() - c.getTime()) / 864E5, q = e(d), m = 24 * (d - q), d = e(m), j = e(60 * (m - d)), m = e(60 * (60 * (m - d) - j)), o.leadingZero && (10 > q && (q = "0" + q), 10 > d && (d = "0" + d), 10 > j && (j = "0" + j), 10 > m && (m = "0" + m)), "down" === o.direction && (b <= c || o.minus) ? a = a.replace(h, q).replace(k, d).replace(g, j).replace(n, m) : "up" === o.direction && (c <= b || o.minus) ? a = a.replace(h, q).replace(k, d).replace(g, j).replace(n, m) : (a = a.replace(f, "00"), o.hasCompleted = !0), this.html(a), this.trigger("change", [o]), o.hasCompleted)) this.trigger("complete.jcountdown"),
			window.clearInterval(o.timer)
		},
		j = {
			init: function(a) {
				var b = c.extend({},
				d, a),
				j;
				j = b.htmlTemplate;
				return this.each(function() {
					var a = c(this),
					d = {},
					m = null === b.offset ? new Date: l(b.offset),
					s = new Date(b.date),
					o = ("down" === b.direction ? s.getTime() - m.getTime() : m.getTime() - s.getTime()) / 864E5,
					p = e(o),
					u = 24 * (o - p),
					o = e(u),
					x = e(60 * (u - o)),
					u = e(60 * (60 * (u - o) - x));
					b.onChange && a.bind("change.jcountdown", b.onChange);
					b.onComplete && a.bind("complete.jcountdown", b.onComplete);
					b.onPause && a.bind("pause.jcountdown", b.onPause);
					b.onResume && a.bind("resume.jcountdown", b.onResume);
					b.leadingZero && (10 > p && (p = "0" + p), 10 > o && (o = "0" + o), 10 > x && (x = "0" + x), 10 > u && (u = "0" + u));
					d.hasCompleted = !1;
					"down" === b.direction && (m <= s || b.minus) ? u = j.replace(h, p).replace(k, o).replace(g, x).replace(n, u) : "up" === b.direction && (s <= m || b.minus) ? u = j.replace(h, p).replace(k, o).replace(g, x).replace(n, u) : (u = j.replace(f, "00"), d.hasCompleted = !0);
					d.originalContent = c(this).html();
					d.date = b.date;
					d.leadingZero = b.leadingZero;
					d.updateTime = b.updateTime;
					d.direction = b.direction;
					d.template = b.htmlTemplate;
					d.htmlTemplate = b.htmlTemplate;
					d.minus = b.minus;
					d.offset = b.offset;
					d.onChange = b.onChange;
					d.onComplete = b.onComplete;
					d.onResume = b.onResume;
					d.onPause = b.onPause;
					d.hasCompleted || (m = c.proxy(t, a), d.timer = window.setInterval(m, d.updateTime));
					a.data("jcdSettings", d);
					a.html(u);
					d.hasCompleted && (a.trigger("complete.jcountdown"), window.clearInterval(d.timer))
				})
			},
			changeSettings: function(a) {
				return this.each(function() {
					var b = c(this),
					d,
					j,
					q,
					m,
					r,
					o,
					p,
					u;
					if (!b.data("jcdSettings")) return ! 0;
					d = c.extend({},
					b.data("jcdSettings"), a);
					j = d.htmlTemplate;
					q = null === d.offset ? new Date: l(d.offset);
					m = new Date(d.date);
					r = ("down" === d.direction ? m.getTime() - q.getTime() : q.getTime() - m.getTime()) / 864E5;
					o = e(r);
					p = 24 * (r - o);
					r = e(p);
					u = e(60 * (p - r));
					p = e(60 * (60 * (p - r) - u));
					b.unbind(".jcountdown");
					window.clearInterval(d.timer);
					d.onChange && b.bind("change.jcountdown", d.onChange);
					d.onComplete && b.bind("complete.jcountdown", d.onComplete);
					d.onPause && b.bind("pause.jcountdown", d.onPause);
					d.onResume && b.bind("resume.jcountdown", d.onResume);
					"down" === d.direction && (q <= m || d.minus) ? j.replace(h, o).replace(k, r).replace(g, u).replace(n, p) : "up" === d.direction && (m <= q || d.minus) ? j.replace(h, o).replace(k, r).replace(g, u).replace(n, p) : (j.replace(f, "00"), d.hasCompleted = !0);
					j = c.proxy(t, b);
					d.timer = window.setInterval(j, d.updateTime);
					b.data("jcdSettings", d);
					d.hasCompleted && (b.trigger("complete.jcountdown"), window.clearInterval(d.timer))
				})
			},
			resume: function() {
				return this.each(function() {
					var a = c(this),
					b,
					d,
					j,
					q,
					m,
					r,
					o,
					p,
					u;
					b = a.data("jcdSettings");
					if (!b) return ! 0;
					j = c.proxy(t, a);
					d = b.htmlTemplate;
					q = null === b.offset ? new Date: l(b.offset);
					m = new Date(b.date);
					r = ("down" === b.direction ? m.getTime() - q.getTime() : q.getTime() - m.getTime()) / 864E5;
					o = e(r);
					p = 24 * (r - o);
					r = e(p);
					u = e(60 * (p - r));
					p = e(60 * (60 * (p - r) - u));
					"down" === b.direction && (q <= m || b.minus) ? d = d.replace(h, o).replace(k, r).replace(g, u).replace(n, p) : "up" === b.direction && (m <= q || b.minus) ? d = d.replace(h, o).replace(k, r).replace(g, u).replace(n, p) : (d = d.replace(f, "00"), b.hasCompleted = !0);
					b.timer = window.setInterval(j, b.updateTime);
					a.data("jcdSettings", b);
					a.trigger("resume.jcountdown");
					a.html(d).trigger("change.jcountdown");
					b.hasCompleted && (a.trigger("complete.jcountdown"), window.clearInterval(b.timer))
				})
			},
			pause: function() {
				return this.each(function() {
					var a = c(this),
					b = c.data(a[0], "jcdSettings");
					if (!b) return ! 0;
					a.trigger("pause.jcountdown");
					window.clearInterval(b.timer)
				})
			},
			complete: function() {
				return this.each(function() {
					var a = c(this),
					b = a.data("jcdSettings");
					if (!b) return ! 0;
					window.clearInterval(b.timer);
					b.hasCompleted = !0;
					a.data("jcdSettings", b);
					a.trigger("complete.jcountdown")
				})
			},
			destroy: function() {
				return this.each(function() {
					var a = c(this),
					b;
					b = a.data("jcdSettings");
					if (!b) return ! 0;
					a.unbind(".jcountdown");
					a.html(b.originalContent);
					a.removeData("jcdSettings")
				})
			},
			getSettings: function(a) {
				var b;
				if (b = c(this[0]).data("jcdSettings")) if (a) {
					if (b[a]) return b[a]
				} else return b
			}
		};
		if (j[b]) return j[b].apply(this, a.call(arguments, 1));
		if ("object" === c.type(b) || !b) return j.init.apply(this, arguments);
		c.error("Method " + b + " does not exist in the jCountdown Plugin")
	}
})(jQuery);