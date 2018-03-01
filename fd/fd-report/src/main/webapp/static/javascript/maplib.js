var Swiper = function(a, b) {
    function c(a, b) {
        return document.querySelectorAll ? (b || document).querySelectorAll(a) : jQuery(a, b)
    }
    function d() {
        var a = A - D;
        return b.freeMode && (a = A - D),
        b.slidesPerView > x.slides.length && (a = 0),
        0 > a && (a = 0),
        a
    }
    function e() {
        function a(a) {
            var c = new Image;
            c.onload = function() {
                x.imagesLoaded++,
                x.imagesLoaded == x.imagesToLoad.length && (x.reInit(), b.onImagesReady && x.fireCallback(b.onImagesReady, x))
            },
            c.src = a
        }
        var d = x.h.addEventListener;
        if (x.browser.ie10 ? (d(x.wrapper, x.touchEvents.touchStart, o), d(document, x.touchEvents.touchMove, p), d(document, x.touchEvents.touchEnd, q)) : (x.support.touch && (d(x.wrapper, "touchstart", o), d(x.wrapper, "touchmove", p), d(x.wrapper, "touchend", q)), b.simulateTouch && (d(x.wrapper, "mousedown", o), d(document, "mousemove", p), d(document, "mouseup", q))), b.autoResize && d(window, "resize", x.resizeFix), f(), x._wheelEvent = !1, b.mousewheelControl) {
            void 0 !== document.onmousewheel && (x._wheelEvent = "mousewheel");
            try {
                WheelEvent("wheel"),
                x._wheelEvent = "wheel"
            } catch(e) {}
            x._wheelEvent || (x._wheelEvent = "DOMMouseScroll"),
            x._wheelEvent && d(x.container, x._wheelEvent, i)
        }
        if (b.keyboardControl && d(document, "keydown", h), b.updateOnImagesReady) for (x.imagesToLoad = c("img", x.container), d = 0; d < x.imagesToLoad.length; d++) a(x.imagesToLoad[d].getAttribute("src"))
    }
    function f() {
        var a, d = x.h.addEventListener;
        if (b.preventLinks) {
            var e = c("a", x.container);
            for (a = 0; a < e.length; a++) d(e[a], "click", m)
        }
        if (b.releaseFormElements) for (e = c("input, textarea, select", x.container), a = 0; a < e.length; a++) d(e[a], x.touchEvents.touchStart, n, !0);
        if (b.onSlideClick) for (a = 0; a < x.slides.length; a++) d(x.slides[a], "click", j);
        if (b.onSlideTouch) for (a = 0; a < x.slides.length; a++) d(x.slides[a], x.touchEvents.touchStart, k)
    }
    function g() {
        var a, d = x.h.removeEventListener;
        if (b.onSlideClick) for (a = 0; a < x.slides.length; a++) d(x.slides[a], "click", j);
        if (b.onSlideTouch) for (a = 0; a < x.slides.length; a++) d(x.slides[a], x.touchEvents.touchStart, k);
        if (b.releaseFormElements) {
            var e = c("input, textarea, select", x.container);
            for (a = 0; a < e.length; a++) d(e[a], x.touchEvents.touchStart, n, !0)
        }
        if (b.preventLinks) for (e = c("a", x.container), a = 0; a < e.length; a++) d(e[a], "click", m)
    }
    function h(a) {
        var b = a.keyCode || a.charCode;
        if (37 == b || 39 == b || 38 == b || 40 == b) {
            for (var c = !1,
            d = x.h.getOffset(x.container), e = x.h.windowScroll().left, f = x.h.windowScroll().top, g = x.h.windowWidth(), h = x.h.windowHeight(), d = [[d.left, d.top], [d.left + x.width, d.top], [d.left, d.top + x.height], [d.left + x.width, d.top + x.height]], i = 0; i < d.length; i++) {
                var j = d[i];
                j[0] >= e && j[0] <= e + g && j[1] >= f && j[1] <= f + h && (c = !0)
            }
            if (!c) return
        }
        G ? ((37 == b || 39 == b) && (a.preventDefault ? a.preventDefault() : a.returnValue = !1), 39 == b && x.swipeNext(), 37 == b && x.swipePrev()) : ((38 == b || 40 == b) && (a.preventDefault ? a.preventDefault() : a.returnValue = !1), 40 == b && x.swipeNext(), 38 == b && x.swipePrev())
    }
    function i(a) {
        var c = x._wheelEvent,
        e = 0;
        if (a.detail) e = -a.detail;
        else if ("mousewheel" == c) if (G) {
            if (! (Math.abs(a.wheelDeltaX) > Math.abs(a.wheelDeltaY))) return;
            e = a.wheelDeltaX
        } else {
            if (! (Math.abs(a.wheelDeltaY) > Math.abs(a.wheelDeltaX))) return;
            e = a.wheelDeltaY
        } else if ("DOMMouseScroll" == c) e = -a.detail;
        else if ("wheel" == c) if (G) {
            if (! (Math.abs(a.deltaX) > Math.abs(a.deltaY))) return;
            e = -a.deltaX
        } else {
            if (! (Math.abs(a.deltaY) > Math.abs(a.deltaX))) return;
            e = -a.deltaY
        }
        if (b.freeMode) {
            if (c = x.getWrapperTranslate() + e, c > 0 && (c = 0), c < -d() && (c = -d()), x.setWrapperTransition(0), x.setWrapperTranslate(c), x.updateActiveSlide(c), 0 == c || c == -d()) return
        } else 60 < (new Date).getTime() - J && (0 > e ? x.swipeNext() : x.swipePrev()),
        J = (new Date).getTime();
        return b.autoplay && x.stopAutoplay(!0),
        a.preventDefault ? a.preventDefault() : a.returnValue = !1,
        !1
    }
    function j(a) {
        x.allowSlideClick && (l(a), x.fireCallback(b.onSlideClick, x, a))
    }
    function k(a) {
        l(a),
        x.fireCallback(b.onSlideTouch, x, a)
    }
    function l(a) {
        if (a.currentTarget) x.clickedSlide = a.currentTarget;
        else {
            a = a.srcElement;
            do
            if ( - 1 < a.className.indexOf(b.slideClass)) break;
            while (a = a.parentNode);
            x.clickedSlide = a
        }
        x.clickedSlideIndex = x.slides.indexOf(x.clickedSlide),
        x.clickedSlideLoopIndex = x.clickedSlideIndex - (x.loopedSlides || 0)
    }
    function m(a) {
        return x.allowLinks ? void 0 : (a.preventDefault ? a.preventDefault() : a.returnValue = !1, !1)
    }
    function n(a) {
        return a.stopPropagation ? a.stopPropagation() : a.returnValue = !1,
        !1
    }
    function o(a) {
        if (b.preventLinks && (x.allowLinks = !0), x.isTouched || b.onlyExternal) return ! 1;
        var c;
        if ((c = b.noSwiping) && (c = a.target || a.srcElement)) {
            c = a.target || a.srcElement;
            var d = !1;
            do - 1 < c.className.indexOf(b.noSwipingClass) && (d = !0),
            c = c.parentElement;
            while (!d && c.parentElement && -1 == c.className.indexOf(b.wrapperClass)); ! d && -1 < c.className.indexOf(b.wrapperClass) && -1 < c.className.indexOf(b.noSwipingClass) && (d = !0),
            c = d
        }
        return c ? !1 : (O = !1, x.isTouched = !0, N = "touchstart" == a.type, void(N && 1 != a.targetTouches.length || (x.callPlugins("onTouchStartBegin"), N || (a.preventDefault ? a.preventDefault() : a.returnValue = !1), c = N ? a.targetTouches[0].pageX: a.pageX || a.clientX, a = N ? a.targetTouches[0].pageY: a.pageY || a.clientY, x.touches.startX = x.touches.currentX = c, x.touches.startY = x.touches.currentY = a, x.touches.start = x.touches.current = G ? c: a, x.setWrapperTransition(0), x.positions.start = x.positions.current = x.getWrapperTranslate(), x.setWrapperTranslate(x.positions.start), x.times.start = (new Date).getTime(), C = void 0, 0 < b.moveStartThreshold && (K = !1), b.onTouchStart && x.fireCallback(b.onTouchStart, x), x.callPlugins("onTouchStartEnd"))))
    }
    function p(a) {
        if (x.isTouched && !b.onlyExternal && (!N || "mousemove" != a.type)) {
            var c = N ? a.targetTouches[0].pageX: a.pageX || a.clientX,
            e = N ? a.targetTouches[0].pageY: a.pageY || a.clientY;
            if ("undefined" == typeof C && G && (C = !!(C || Math.abs(e - x.touches.startY) > Math.abs(c - x.touches.startX))), "undefined" != typeof C || G || (C = !!(C || Math.abs(e - x.touches.startY) < Math.abs(c - x.touches.startX))), C) x.isTouched = !1;
            else if (a.assignedToSwiper) x.isTouched = !1;
            else if (a.assignedToSwiper = !0, b.preventLinks && (x.allowLinks = !1), b.onSlideClick && (x.allowSlideClick = !1), b.autoplay && x.stopAutoplay(!0), (!N || 1 == a.touches.length) && (x.isMoved || (x.callPlugins("onTouchMoveStart"), b.loop && (x.fixLoop(), x.positions.start = x.getWrapperTranslate()), b.onTouchMoveStart && x.fireCallback(b.onTouchMoveStart, x)), x.isMoved = !0, a.preventDefault ? a.preventDefault() : a.returnValue = !1, x.touches.current = G ? c: e, x.positions.current = (x.touches.current - x.touches.start) * b.touchRatio + x.positions.start, 0 < x.positions.current && b.onResistanceBefore && x.fireCallback(b.onResistanceBefore, x, x.positions.current), x.positions.current < -d() && b.onResistanceAfter && x.fireCallback(b.onResistanceAfter, x, Math.abs(x.positions.current + d())), b.resistance && "100%" != b.resistance && (0 < x.positions.current && (a = 1 - x.positions.current / D / 2, x.positions.current = .5 > a ? D / 2 : x.positions.current * a), x.positions.current < -d() && (c = (x.touches.current - x.touches.start) * b.touchRatio + (d() + x.positions.start), a = (D + c) / D, c = x.positions.current - c * (1 - a) / 2, e = -d() - D / 2, x.positions.current = e > c || 0 >= a ? e: c)), b.resistance && "100%" == b.resistance && (0 < x.positions.current && (!b.freeMode || b.freeModeFluid) && (x.positions.current = 0), x.positions.current < -d() && (!b.freeMode || b.freeModeFluid) && (x.positions.current = -d())), b.followFinger)) return b.moveStartThreshold ? Math.abs(x.touches.current - x.touches.start) > b.moveStartThreshold || K ? (K = !0, x.setWrapperTranslate(x.positions.current)) : x.positions.current = x.positions.start: x.setWrapperTranslate(x.positions.current),
            (b.freeMode || b.watchActiveIndex) && x.updateActiveSlide(x.positions.current),
            b.grabCursor && (x.container.style.cursor = "move", x.container.style.cursor = "grabbing", x.container.style.cursor = "-moz-grabbin", x.container.style.cursor = "-webkit-grabbing"),
            L || (L = x.touches.current),
            M || (M = (new Date).getTime()),
            x.velocity = (x.touches.current - L) / ((new Date).getTime() - M) / 2,
            2 > Math.abs(x.touches.current - L) && (x.velocity = 0),
            L = x.touches.current,
            M = (new Date).getTime(),
            x.callPlugins("onTouchMoveEnd"),
            b.onTouchMove && x.fireCallback(b.onTouchMove, x),
            !1
        }
    }
    function q(a) {
        if (C && x.swipeReset(), !b.onlyExternal && x.isTouched) {
            x.isTouched = !1,
            b.grabCursor && (x.container.style.cursor = "move", x.container.style.cursor = "grab", x.container.style.cursor = "-moz-grab", x.container.style.cursor = "-webkit-grab"),
            x.positions.current || 0 === x.positions.current || (x.positions.current = x.positions.start),
            b.followFinger && x.setWrapperTranslate(x.positions.current),
            x.times.end = (new Date).getTime(),
            x.touches.diff = x.touches.current - x.touches.start,
            x.touches.abs = Math.abs(x.touches.diff),
            x.positions.diff = x.positions.current - x.positions.start,
            x.positions.abs = Math.abs(x.positions.diff);
            var c = x.positions.diff,
            e = x.positions.abs;
            a = x.times.end - x.times.start,
            5 > e && 300 > a && 0 == x.allowLinks && (b.freeMode || 0 == e || x.swipeReset(), b.preventLinks && (x.allowLinks = !0), b.onSlideClick && (x.allowSlideClick = !0)),
            setTimeout(function() {
                b.preventLinks && (x.allowLinks = !0),
                b.onSlideClick && (x.allowSlideClick = !0)
            },
            100);
            var f = d();
            if (!x.isMoved && b.freeMode) x.isMoved = !1,
            b.onTouchEnd && x.fireCallback(b.onTouchEnd, x);
            else if (!x.isMoved || 0 < x.positions.current || x.positions.current < -f) x.swipeReset(),
            b.onTouchEnd && x.fireCallback(b.onTouchEnd, x);
            else if (x.isMoved = !1, b.freeMode) {
                if (b.freeModeFluid) {
                    var g, e = 1e3 * b.momentumRatio,
                    c = x.positions.current + x.velocity * e,
                    h = !1,
                    i = 20 * Math.abs(x.velocity) * b.momentumBounceRatio; - f > c && (b.momentumBounce && x.support.transitions ? ( - i > c + f && (c = -f - i), g = -f, O = h = !0) : c = -f),
                    c > 0 && (b.momentumBounce && x.support.transitions ? (c > i && (c = i), g = 0, O = h = !0) : c = 0),
                    0 != x.velocity && (e = Math.abs((c - x.positions.current) / x.velocity)),
                    x.setWrapperTranslate(c),
                    x.setWrapperTransition(e),
                    b.momentumBounce && h && x.wrapperTransitionEnd(function() {
                        O && (b.onMomentumBounce && x.fireCallback(b.onMomentumBounce, x), x.callPlugins("onMomentumBounce"), x.setWrapperTranslate(g), x.setWrapperTransition(300))
                    }),
                    x.updateActiveSlide(c)
                } (!b.freeModeFluid || a >= 300) && x.updateActiveSlide(x.positions.current),
                b.onTouchEnd && x.fireCallback(b.onTouchEnd, x)
            } else {
                if (B = 0 > c ? "toNext": "toPrev", "toNext" == B && 300 >= a && (30 > e || !b.shortSwipes ? x.swipeReset() : x.swipeNext(!0)), "toPrev" == B && 300 >= a && (30 > e || !b.shortSwipes ? x.swipeReset() : x.swipePrev(!0)), f = 0, "auto" == b.slidesPerView) {
                    for (var c = Math.abs(x.getWrapperTranslate()), j = h = 0; j < x.slides.length; j++) if (i = G ? x.slides[j].getWidth(!0) : x.slides[j].getHeight(!0), h += i, h > c) {
                        f = i;
                        break
                    }
                    f > D && (f = D)
                } else f = z * b.slidesPerView;
                "toNext" == B && a > 300 && (e >= .5 * f ? x.swipeNext(!0) : x.swipeReset()),
                "toPrev" == B && a > 300 && (e >= .5 * f ? x.swipePrev(!0) : x.swipeReset()),
                b.onTouchEnd && b.onTouchEnd(x)
            }
            x.callPlugins("onTouchEnd")
        }
    }
    function r(a, c, d) {
        function e() {
            g += h,
            (j = "toNext" == i ? g > a: a > g) ? (x.setWrapperTranslate(Math.round(g)), x._DOMAnimating = !0, window.setTimeout(function() {
                e()
            },
            1e3 / 60)) : (b.onSlideChangeEnd && x.fireCallback(b.onSlideChangeEnd, x), x.setWrapperTranslate(a), x._DOMAnimating = !1)
        }
        var f = "to" == c && 0 <= d.speed ? d.speed: b.speed;
        if (x.support.transitions || !b.DOMAnimation) x.setWrapperTranslate(a),
        x.setWrapperTransition(f);
        else {
            var g = x.getWrapperTranslate(),
            h = Math.ceil((a - g) / f * (1e3 / 60)),
            i = g > a ? "toNext": "toPrev",
            j = "toNext" == i ? g > a: a > g;
            if (x._DOMAnimating) return;
            e()
        }
        x.updateActiveSlide(a),
        b.onSlideNext && "next" == c && x.fireCallback(b.onSlideNext, x, a),
        b.onSlidePrev && "prev" == c && x.fireCallback(b.onSlidePrev, x, a),
        b.onSlideReset && "reset" == c && x.fireCallback(b.onSlideReset, x, a),
        ("next" == c || "prev" == c || "to" == c && 1 == d.runCallbacks) && s(c)
    }
    function s(a) {
        if (x.callPlugins("onSlideChangeStart"), b.onSlideChangeStart) if (b.queueStartCallbacks && x.support.transitions) {
            if (x._queueStartCallbacks) return;
            x._queueStartCallbacks = !0,
            x.fireCallback(b.onSlideChangeStart, x, a),
            x.wrapperTransitionEnd(function() {
                x._queueStartCallbacks = !1
            })
        } else x.fireCallback(b.onSlideChangeStart, x, a);
        b.onSlideChangeEnd && (x.support.transitions ? b.queueEndCallbacks ? x._queueEndCallbacks || (x._queueEndCallbacks = !0, x.wrapperTransitionEnd(function(c) {
            x.fireCallback(b.onSlideChangeEnd, c, a)
        })) : x.wrapperTransitionEnd(function(c) {
            x.fireCallback(b.onSlideChangeEnd, c, a)
        }) : b.DOMAnimation || setTimeout(function() {
            x.fireCallback(b.onSlideChangeStart, x, a)
        },
        10))
    }
    function t() {
        for (var a = x.paginationButtons,
        b = 0; b < a.length; b++) x.h.removeEventListener(a[b], "click", u)
    }
    function u(a) {
        var b;
        a = a.target || a.srcElement;
        for (var c = x.paginationButtons,
        d = 0; d < c.length; d++) a === c[d] && (b = d);
        x.swipeTo(b)
    }
    function v() {
        P = setTimeout(function() {
            b.loop ? (x.fixLoop(), x.swipeNext(!0)) : x.swipeNext(!0) || x.swipeTo(0),
            x.wrapperTransitionEnd(function() {
                "undefined" != typeof P && v()
            })
        },
        b.autoplay)
    }
    if (document.body.__defineGetter__ && HTMLElement) {
        var w = HTMLElement.prototype;
        w.__defineGetter__ && w.__defineGetter__("outerHTML",
        function() {
            return (new XMLSerializer).serializeToString(this)
        })
    }
    if (window.getComputedStyle || (window.getComputedStyle = function(a) {
        return this.el = a,
        this.getPropertyValue = function(b) {
            var c = /(\-([a-z]){1})/g;
            return "float" === b && (b = "styleFloat"),
            c.test(b) && (b = b.replace(c,
            function(a, b, c) {
                return c.toUpperCase()
            })),
            a.currentStyle[b] ? a.currentStyle[b] : null
        },
        this
    }), Array.prototype.indexOf || (Array.prototype.indexOf = function(a, b) {
        for (var c = b || 0,
        d = this.length; d > c; c++) if (this[c] === a) return c;
        return - 1
    }), (document.querySelectorAll || window.jQuery) && "undefined" != typeof a && (a.nodeType || 0 !== c(a).length)) {
        var x = this;
        x.touches = {
            start: 0,
            startX: 0,
            startY: 0,
            current: 0,
            currentX: 0,
            currentY: 0,
            diff: 0,
            abs: 0
        },
        x.positions = {
            start: 0,
            abs: 0,
            diff: 0,
            current: 0
        },
        x.times = {
            start: 0,
            end: 0
        },
        x.id = (new Date).getTime(),
        x.container = a.nodeType ? a: c(a)[0],
        x.isTouched = !1,
        x.isMoved = !1,
        x.activeIndex = 0,
        x.centerIndex = 0,
        x.activeLoaderIndex = 0,
        x.activeLoopIndex = 0,
        x.previousIndex = null,
        x.velocity = 0,
        x.snapGrid = [],
        x.slidesGrid = [],
        x.imagesToLoad = [],
        x.imagesLoaded = 0,
        x.wrapperLeft = 0,
        x.wrapperRight = 0,
        x.wrapperTop = 0,
        x.wrapperBottom = 0;
        var y, z, A, B, C, D, w = {
            mode: "horizontal",
            touchRatio: 1,
            speed: 300,
            freeMode: !1,
            freeModeFluid: !1,
            momentumRatio: 1,
            momentumBounce: !0,
            momentumBounceRatio: 1,
            slidesPerView: 1,
            slidesPerGroup: 1,
            simulateTouch: !0,
            followFinger: !0,
            shortSwipes: !0,
            moveStartThreshold: !1,
            onlyExternal: !1,
            createPagination: !0,
            pagination: !1,
            paginationElement: "span",
            paginationClickable: !1,
            paginationAsRange: !0,
            resistance: !0,
            scrollContainer: !1,
            preventLinks: !0,
            noSwiping: !1,
            noSwipingClass: "swiper-no-swiping",
            initialSlide: 0,
            keyboardControl: !1,
            mousewheelControl: !1,
            useCSS3Transforms: !0,
            autoplay: !1,
            autoplayDisableOnInteraction: !0,
            loop: !1,
            loopAdditionalSlides: 0,
            calculateHeight: !1,
            cssWidthAndHeight: !1,
            updateOnImagesReady: !0,
            releaseFormElements: !0,
            watchActiveIndex: !1,
            visibilityFullFit: !1,
            offsetPxBefore: 0,
            offsetPxAfter: 0,
            offsetSlidesBefore: 0,
            offsetSlidesAfter: 0,
            centeredSlides: !1,
            queueStartCallbacks: !1,
            queueEndCallbacks: !1,
            autoResize: !0,
            resizeReInit: !1,
            DOMAnimation: !0,
            loader: {
                slides: [],
                slidesHTMLType: "inner",
                surroundGroups: 1,
                logic: "reload",
                loadAllSlides: !1
            },
            slideElement: "div",
            slideClass: "swiper-slide",
            slideActiveClass: "swiper-slide-active",
            slideVisibleClass: "swiper-slide-visible",
            wrapperClass: "swiper-wrapper",
            paginationElementClass: "swiper-pagination-switch",
            paginationActiveClass: "swiper-active-switch",
            paginationVisibleClass: "swiper-visible-switch"
        };
        b = b || {};
        for (var E in w) if (E in b && "object" == typeof b[E]) for (var F in w[E]) F in b[E] || (b[E][F] = w[E][F]);
        else E in b || (b[E] = w[E]);
        x.params = b,
        b.scrollContainer && (b.freeMode = !0, b.freeModeFluid = !0),
        b.loop && (b.resistance = "100%");
        var G = "horizontal" === b.mode;
        for (x.touchEvents = {
            touchStart: x.support.touch || !b.simulateTouch ? "touchstart": x.browser.ie10 ? "MSPointerDown": "mousedown",
            touchMove: x.support.touch || !b.simulateTouch ? "touchmove": x.browser.ie10 ? "MSPointerMove": "mousemove",
            touchEnd: x.support.touch || !b.simulateTouch ? "touchend": x.browser.ie10 ? "MSPointerUp": "mouseup"
        },
        E = x.container.childNodes.length - 1; E >= 0; E--) if (x.container.childNodes[E].className) for (F = x.container.childNodes[E].className.split(" "), w = 0; w < F.length; w++) F[w] === b.wrapperClass && (y = x.container.childNodes[E]);
        x.wrapper = y,
        x._extendSwiperSlide = function(a) {
            return a.append = function() {
                return b.loop ? (a.insertAfter(x.slides.length - x.loopedSlides), x.removeLoopedSlides(), x.calcSlides(), x.createLoop()) : x.wrapper.appendChild(a),
                x.reInit(),
                a
            },
            a.prepend = function() {
                return b.loop ? (x.wrapper.insertBefore(a, x.slides[x.loopedSlides]), x.removeLoopedSlides(), x.calcSlides(), x.createLoop()) : x.wrapper.insertBefore(a, x.wrapper.firstChild),
                x.reInit(),
                a
            },
            a.insertAfter = function(c) {
                return "undefined" == typeof c ? !1 : (b.loop ? (c = x.slides[c + 1 + x.loopedSlides], x.wrapper.insertBefore(a, c), x.removeLoopedSlides(), x.calcSlides(), x.createLoop()) : (c = x.slides[c + 1], x.wrapper.insertBefore(a, c)), x.reInit(), a)
            },
            a.clone = function() {
                return x._extendSwiperSlide(a.cloneNode(!0))
            },
            a.remove = function() {
                x.wrapper.removeChild(a),
                x.reInit()
            },
            a.html = function(b) {
                return "undefined" == typeof b ? a.innerHTML: (a.innerHTML = b, a)
            },
            a.index = function() {
                for (var b, c = x.slides.length - 1; c >= 0; c--) a === x.slides[c] && (b = c);
                return b
            },
            a.isActive = function() {
                return a.index() === x.activeIndex ? !0 : !1
            },
            a.swiperSlideDataStorage || (a.swiperSlideDataStorage = {}),
            a.getData = function(b) {
                return a.swiperSlideDataStorage[b]
            },
            a.setData = function(b, c) {
                return a.swiperSlideDataStorage[b] = c,
                a
            },
            a.data = function(b, c) {
                return c ? (a.setAttribute("data-" + b, c), a) : a.getAttribute("data-" + b)
            },
            a.getWidth = function(b) {
                return x.h.getWidth(a, b)
            },
            a.getHeight = function(b) {
                return x.h.getHeight(a, b)
            },
            a.getOffset = function() {
                return x.h.getOffset(a)
            },
            a
        },
        x.calcSlides = function(a) {
            var c = x.slides ? x.slides.length: !1;
            x.slides = [],
            x.displaySlides = [];
            for (var d = 0; d < x.wrapper.childNodes.length; d++) if (x.wrapper.childNodes[d].className) for (var e = x.wrapper.childNodes[d].className.split(" "), h = 0; h < e.length; h++) e[h] === b.slideClass && x.slides.push(x.wrapper.childNodes[d]);
            for (d = x.slides.length - 1; d >= 0; d--) x._extendSwiperSlide(x.slides[d]); ! 1 === c || c === x.slides.length && !a || (g(), f(), x.updateActiveSlide(), x.params.pagination && x.createPagination(), x.callPlugins("numberOfSlidesChanged"))
        },
        x.createSlide = function(a, c, d) {
            return c = c || x.params.slideClass,
            d = d || b.slideElement,
            d = document.createElement(d),
            d.innerHTML = a || "",
            d.className = c,
            x._extendSwiperSlide(d)
        },
        x.appendSlide = function(a, b, c) {
            return a ? a.nodeType ? x._extendSwiperSlide(a).append() : x.createSlide(a, b, c).append() : void 0
        },
        x.prependSlide = function(a, b, c) {
            return a ? a.nodeType ? x._extendSwiperSlide(a).prepend() : x.createSlide(a, b, c).prepend() : void 0
        },
        x.insertSlideAfter = function(a, b, c, d) {
            return "undefined" == typeof a ? !1 : b.nodeType ? x._extendSwiperSlide(b).insertAfter(a) : x.createSlide(b, c, d).insertAfter(a)
        },
        x.removeSlide = function(a) {
            if (x.slides[a]) {
                if (b.loop) {
                    if (!x.slides[a + x.loopedSlides]) return ! 1;
                    x.slides[a + x.loopedSlides].remove(),
                    x.removeLoopedSlides(),
                    x.calcSlides(),
                    x.createLoop()
                } else x.slides[a].remove();
                return ! 0
            }
            return ! 1
        },
        x.removeLastSlide = function() {
            return 0 < x.slides.length ? (b.loop ? (x.slides[x.slides.length - 1 - x.loopedSlides].remove(), x.removeLoopedSlides(), x.calcSlides(), x.createLoop()) : x.slides[x.slides.length - 1].remove(), !0) : !1
        },
        x.removeAllSlides = function() {
            for (var a = x.slides.length - 1; a >= 0; a--) x.slides[a].remove()
        },
        x.getSlide = function(a) {
            return x.slides[a]
        },
        x.getLastSlide = function() {
            return x.slides[x.slides.length - 1]
        },
        x.getFirstSlide = function() {
            return x.slides[0]
        },
        x.activeSlide = function() {
            return x.slides[x.activeIndex]
        };
        var H, I = [];
        for (H in x.plugins) b[H] && (E = x.plugins[H](x, b[H])) && I.push(E);
        x.callPlugins = function(a, b) {
            b || (b = {});
            for (var c = 0; c < I.length; c++) a in I[c] && I[c][a](b)
        },
        x.fireCallback = function(a, b, c, d, e, f) {
            if ("[object Array]" === Object.prototype.toString.call(a)) for (var g = 0; g < a.length; g++)"function" == typeof a[g] && a[g](b, c, d, e, f);
            else a(b, c, d, e, f)
        },
        x.addCallback = function(a, b) {
            var c;
            return this.params["on" + a] ? (c = "[object Array]" === Object.prototype.toString.apply(this.params["on" + a]) ? !0 : !1) ? this.params["on" + a].push(b) : "function" == typeof this.params["on" + a] ? (c = this.params["on" + a], this.params["on" + a] = [], this.params["on" + a].push(c), this.params["on" + a].push(b)) : void 0 : (this.params["on" + a] = [], this.params["on" + a].push(b))
        },
        x.removeCallbacks = function(a) {
            return x.params["on" + a] ? x.params["on" + a] = null: void 0
        },
        x.browser.ie10 && !b.onlyExternal && x.wrapper.classList.add("swiper-wp8-" + (G ? "horizontal": "vertical")),
        b.freeMode && (x.container.className += " swiper-free-mode"),
        x.initialized = !1,
        x.init = function(a, c) {
            var d = x.h.getWidth(x.container),
            e = x.h.getHeight(x.container);
            if (d !== x.width || e !== x.height || a) {
                if (x.width = d, x.height = e, D = G ? d: e, d = x.wrapper, a && x.calcSlides(c), "auto" === b.slidesPerView) {
                    var f = 0,
                    g = 0;
                    0 < b.slidesOffset && (d.style.paddingLeft = "", d.style.paddingRight = "", d.style.paddingTop = "", d.style.paddingBottom = ""),
                    d.style.width = "",
                    d.style.height = "",
                    0 < b.offsetPxBefore && (G ? x.wrapperLeft = b.offsetPxBefore: x.wrapperTop = b.offsetPxBefore),
                    0 < b.offsetPxAfter && (G ? x.wrapperRight = b.offsetPxAfter: x.wrapperBottom = b.offsetPxAfter),
                    b.centeredSlides && (G ? (x.wrapperLeft = (D - this.slides[0].getWidth(!0)) / 2, x.wrapperRight = (D - x.slides[x.slides.length - 1].getWidth(!0)) / 2) : (x.wrapperTop = (D - x.slides[0].getHeight(!0)) / 2, x.wrapperBottom = (D - x.slides[x.slides.length - 1].getHeight(!0)) / 2)),
                    G ? (0 <= x.wrapperLeft && (d.style.paddingLeft = x.wrapperLeft + "px"), 0 <= x.wrapperRight && (d.style.paddingRight = x.wrapperRight + "px")) : (0 <= x.wrapperTop && (d.style.paddingTop = x.wrapperTop + "px"), 0 <= x.wrapperBottom && (d.style.paddingBottom = x.wrapperBottom + "px"));
                    var h = 0,
                    i = 0;
                    x.snapGrid = [],
                    x.slidesGrid = [];
                    for (var j = 0,
                    k = 0; k < x.slides.length; k++) {
                        var e = x.slides[k].getWidth(!0),
                        l = x.slides[k].getHeight(!0);
                        b.calculateHeight && (j = Math.max(j, l));
                        var m = G ? e: l;
                        if (b.centeredSlides) {
                            var n = k === x.slides.length - 1 ? 0 : x.slides[k + 1].getWidth(!0),
                            o = k === x.slides.length - 1 ? 0 : x.slides[k + 1].getHeight(!0),
                            n = G ? n: o;
                            if (m > D) {
                                for (o = 0; o <= Math.floor(m / (D + x.wrapperLeft)); o++) x.snapGrid.push(0 === o ? h + x.wrapperLeft: h + x.wrapperLeft + D * o);
                                x.slidesGrid.push(h + x.wrapperLeft)
                            } else x.snapGrid.push(i),
                            x.slidesGrid.push(i);
                            i += m / 2 + n / 2
                        } else {
                            if (m > D) for (o = 0; o <= Math.floor(m / D); o++) x.snapGrid.push(h + D * o);
                            else x.snapGrid.push(h);
                            x.slidesGrid.push(h)
                        }
                        h += m,
                        f += e,
                        g += l
                    }
                    b.calculateHeight && (x.height = j),
                    G ? (A = f + x.wrapperRight + x.wrapperLeft, d.style.width = f + "px", d.style.height = x.height + "px") : (A = g + x.wrapperTop + x.wrapperBottom, d.style.width = x.width + "px", d.style.height = g + "px")
                } else if (b.scrollContainer) d.style.width = "",
                d.style.height = "",
                j = x.slides[0].getWidth(!0),
                f = x.slides[0].getHeight(!0),
                A = G ? j: f,
                d.style.width = j + "px",
                d.style.height = f + "px",
                z = G ? j: f;
                else {
                    if (b.calculateHeight) {
                        for (f = j = 0, G || (x.container.style.height = ""), d.style.height = "", k = 0; k < x.slides.length; k++) x.slides[k].style.height = "",
                        j = Math.max(x.slides[k].getHeight(!0), j),
                        G || (f += x.slides[k].getHeight(!0));
                        l = j,
                        x.height = l,
                        G ? f = l: (D = l, x.container.style.height = D + "px")
                    } else l = G ? x.height: x.height / b.slidesPerView,
                    f = G ? x.height: x.slides.length * l;
                    for (e = G ? x.width / b.slidesPerView: x.width, j = G ? x.slides.length * e: x.width, z = G ? e: l, 0 < b.offsetSlidesBefore && (G ? x.wrapperLeft = z * b.offsetSlidesBefore: x.wrapperTop = z * b.offsetSlidesBefore), 0 < b.offsetSlidesAfter && (G ? x.wrapperRight = z * b.offsetSlidesAfter: x.wrapperBottom = z * b.offsetSlidesAfter), 0 < b.offsetPxBefore && (G ? x.wrapperLeft = b.offsetPxBefore: x.wrapperTop = b.offsetPxBefore), 0 < b.offsetPxAfter && (G ? x.wrapperRight = b.offsetPxAfter: x.wrapperBottom = b.offsetPxAfter), b.centeredSlides && (G ? (x.wrapperLeft = (D - z) / 2, x.wrapperRight = (D - z) / 2) : (x.wrapperTop = (D - z) / 2, x.wrapperBottom = (D - z) / 2)), G ? (0 < x.wrapperLeft && (d.style.paddingLeft = x.wrapperLeft + "px"), 0 < x.wrapperRight && (d.style.paddingRight = x.wrapperRight + "px")) : (0 < x.wrapperTop && (d.style.paddingTop = x.wrapperTop + "px"), 0 < x.wrapperBottom && (d.style.paddingBottom = x.wrapperBottom + "px")), A = G ? j + x.wrapperRight + x.wrapperLeft: f + x.wrapperTop + x.wrapperBottom, b.cssWidthAndHeight || (0 < parseFloat(j) && (d.style.width = j + "px"), 0 < parseFloat(f) && (d.style.height = f + "px")), h = 0, x.snapGrid = [], x.slidesGrid = [], k = 0; k < x.slides.length; k++) x.snapGrid.push(h),
                    x.slidesGrid.push(h),
                    h += z,
                    b.cssWidthAndHeight || (0 < parseFloat(e) && (x.slides[k].style.width = e + "px"), 0 < parseFloat(l) && (x.slides[k].style.height = l + "px"))
                }
                x.initialized ? (x.callPlugins("onInit"), b.onInit && x.fireCallback(b.onInit, x)) : (x.callPlugins("onFirstInit"), b.onFirstInit && x.fireCallback(b.onFirstInit, x)),
                x.initialized = !0
            }
        },
        x.reInit = function(a) {
            x.init(!0, a)
        },
        x.resizeFix = function(a) {
            x.callPlugins("beforeResizeFix"),
            x.init(b.resizeReInit || a),
            b.freeMode ? x.getWrapperTranslate() < -d() && (x.setWrapperTransition(0), x.setWrapperTranslate( - d())) : x.swipeTo(b.loop ? x.activeLoopIndex: x.activeIndex, 0, !1),
            x.callPlugins("afterResizeFix")
        },
        x.destroy = function(a) {
            a = x.h.removeEventListener,
            x.browser.ie10 ? (a(x.wrapper, x.touchEvents.touchStart, o), a(document, x.touchEvents.touchMove, p), a(document, x.touchEvents.touchEnd, q)) : (x.support.touch && (a(x.wrapper, "touchstart", o), a(x.wrapper, "touchmove", p), a(x.wrapper, "touchend", q)), b.simulateTouch && (a(x.wrapper, "mousedown", o), a(document, "mousemove", p), a(document, "mouseup", q))),
            b.autoResize && a(window, "resize", x.resizeFix),
            g(),
            b.paginationClickable && t(),
            b.mousewheelControl && x._wheelEvent && a(x.container, x._wheelEvent, i),
            b.keyboardControl && a(document, "keydown", h),
            b.autoplay && x.stopAutoplay(),
            x.callPlugins("onDestroy"),
            x = null
        };
        var J = (new Date).getTime();
        b.grabCursor && (H = x.container.style, H.cursor = "move", H.cursor = "grab", H.cursor = "-moz-grab", H.cursor = "-webkit-grab"),
        x.allowSlideClick = !0,
        x.allowLinks = !0;
        var K, L, M, N = !1,
        O = !0;
        x.swipeNext = function(a) { ! a && b.loop && x.fixLoop(),
            !a && b.autoplay && x.stopAutoplay(!0),
            x.callPlugins("onSwipeNext");
            var c = a = x.getWrapperTranslate();
            if ("auto" == b.slidesPerView) {
                for (var e = 0; e < x.snapGrid.length; e++) if ( - a >= x.snapGrid[e] && -a < x.snapGrid[e + 1]) {
                    c = -x.snapGrid[e + 1];
                    break
                }
            } else c = z * b.slidesPerGroup,
            c = -(Math.floor(Math.abs(a) / Math.floor(c)) * c + c);
            return c < -d() && (c = -d()),
            c == a ? !1 : (r(c, "next"), !0)
        },
        x.swipePrev = function(a) { ! a && b.loop && x.fixLoop(),
            !a && b.autoplay && x.stopAutoplay(!0),
            x.callPlugins("onSwipePrev"),
            a = Math.ceil(x.getWrapperTranslate());
            var c;
            if ("auto" == b.slidesPerView) {
                c = 0;
                for (var d = 1; d < x.snapGrid.length; d++) {
                    if ( - a == x.snapGrid[d]) {
                        c = -x.snapGrid[d - 1];
                        break
                    }
                    if ( - a > x.snapGrid[d] && -a < x.snapGrid[d + 1]) {
                        c = -x.snapGrid[d];
                        break
                    }
                }
            } else c = z * b.slidesPerGroup,
            c *= -(Math.ceil( - a / c) - 1);
            return c > 0 && (c = 0),
            c == a ? !1 : (r(c, "prev"), !0)
        },
        x.swipeReset = function() {
            x.callPlugins("onSwipeReset");
            var a = x.getWrapperTranslate(),
            c = z * b.slidesPerGroup;
            if (d(), "auto" == b.slidesPerView) {
                for (var e = c = 0; e < x.snapGrid.length; e++) {
                    if ( - a === x.snapGrid[e]) return;
                    if ( - a >= x.snapGrid[e] && -a < x.snapGrid[e + 1]) {
                        c = 0 < x.positions.diff ? -x.snapGrid[e + 1] : -x.snapGrid[e];
                        break
                    }
                } - a >= x.snapGrid[x.snapGrid.length - 1] && (c = -x.snapGrid[x.snapGrid.length - 1]),
                a <= -d() && (c = -d())
            } else c = 0 > a ? Math.round(a / c) * c: 0;
            return b.scrollContainer && (c = 0 > a ? a: 0),
            c < -d() && (c = -d()),
            b.scrollContainer && D > z && (c = 0),
            c == a ? !1 : (r(c, "reset"), !0)
        },
        x.swipeTo = function(a, c, e) {
            a = parseInt(a, 10),
            x.callPlugins("onSwipeTo", {
                index: a,
                speed: c
            }),
            b.loop && (a += x.loopedSlides);
            var f = x.getWrapperTranslate();
            if (! (a > x.slides.length - 1 || 0 > a)) {
                var g;
                return g = "auto" == b.slidesPerView ? -x.slidesGrid[a] : -a * z,
                g < -d() && (g = -d()),
                g == f ? !1 : (r(g, "to", {
                    index: a,
                    speed: c,
                    runCallbacks: !1 === e ? !1 : !0
                }), !0)
            }
        },
        x._queueStartCallbacks = !1,
        x._queueEndCallbacks = !1,
        x.updateActiveSlide = function(a) {
            if (x.initialized && 0 != x.slides.length) {
                if (x.previousIndex = x.activeIndex, "undefined" == typeof a && (a = x.getWrapperTranslate()), a > 0 && (a = 0), "auto" == b.slidesPerView) {
                    if (x.activeIndex = x.slidesGrid.indexOf( - a), 0 > x.activeIndex) {
                        for (var c = 0; c < x.slidesGrid.length - 1 && !( - a > x.slidesGrid[c] && -a < x.slidesGrid[c + 1]); c++);
                        var d = Math.abs(x.slidesGrid[c] + a),
                        e = Math.abs(x.slidesGrid[c + 1] + a);
                        x.activeIndex = e >= d ? c: c + 1
                    }
                } else x.activeIndex = Math[b.visibilityFullFit ? "ceil": "round"]( - a / z);
                if (x.activeIndex == x.slides.length && (x.activeIndex = x.slides.length - 1), 0 > x.activeIndex && (x.activeIndex = 0), x.slides[x.activeIndex]) {
                    for (x.calcVisibleSlides(a), d = RegExp("\\s*" + b.slideActiveClass), e = RegExp("\\s*" + b.slideVisibleClass), c = 0; c < x.slides.length; c++) x.slides[c].className = x.slides[c].className.replace(d, "").replace(e, ""),
                    0 <= x.visibleSlides.indexOf(x.slides[c]) && (x.slides[c].className += " " + b.slideVisibleClass);
                    x.slides[x.activeIndex].className += " " + b.slideActiveClass,
                    b.loop ? (c = x.loopedSlides, x.activeLoopIndex = x.activeIndex - c, x.activeLoopIndex >= x.slides.length - 2 * c && (x.activeLoopIndex = x.slides.length - 2 * c - x.activeLoopIndex), 0 > x.activeLoopIndex && (x.activeLoopIndex = x.slides.length - 2 * c + x.activeLoopIndex)) : x.activeLoopIndex = x.activeIndex,
                    b.pagination && x.updatePagination(a)
                }
            }
        },
        x.createPagination = function(a) {
            if (b.paginationClickable && x.paginationButtons && t(), x.paginationContainer = b.pagination.nodeType ? b.pagination: c(b.pagination)[0], b.createPagination) {
                var d = "",
                e = x.slides.length;
                b.loop && (e -= 2 * x.loopedSlides);
                for (var f = 0; e > f; f++) d += "<" + b.paginationElement + ' class="' + b.paginationElementClass + '"></' + b.paginationElement + ">";
                x.paginationContainer.innerHTML = d
            }
            if (x.paginationButtons = c("." + b.paginationElementClass, x.paginationContainer), a || x.updatePagination(), x.callPlugins("onCreatePagination"), b.paginationClickable) for (a = x.paginationButtons, d = 0; d < a.length; d++) x.h.addEventListener(a[d], "click", u)
        },
        x.updatePagination = function(a) {
            if (b.pagination && !(1 > x.slides.length) && c("." + b.paginationActiveClass, x.paginationContainer)) {
                var d = x.paginationButtons;
                if (0 != d.length) {
                    for (var e = 0; e < d.length; e++) d[e].className = b.paginationElementClass;
                    var f = b.loop ? x.loopedSlides: 0;
                    if (b.paginationAsRange) {
                        for (x.visibleSlides || x.calcVisibleSlides(a), a = [], e = 0; e < x.visibleSlides.length; e++) {
                            var g = x.slides.indexOf(x.visibleSlides[e]) - f;
                            b.loop && 0 > g && (g = x.slides.length - 2 * x.loopedSlides + g),
                            b.loop && g >= x.slides.length - 2 * x.loopedSlides && (g = x.slides.length - 2 * x.loopedSlides - g, g = Math.abs(g)),
                            a.push(g)
                        }
                        for (e = 0; e < a.length; e++) d[a[e]] && (d[a[e]].className += " " + b.paginationVisibleClass);
                        b.loop ? d[x.activeLoopIndex].className += " " + b.paginationActiveClass: d[x.activeIndex].className += " " + b.paginationActiveClass
                    } else b.loop ? d[x.activeLoopIndex].className += " " + b.paginationActiveClass + " " + b.paginationVisibleClass: d[x.activeIndex].className += " " + b.paginationActiveClass + " " + b.paginationVisibleClass
                }
            }
        },
        x.calcVisibleSlides = function(a) {
            var c = [],
            d = 0,
            e = 0,
            f = 0;
            G && 0 < x.wrapperLeft && (a += x.wrapperLeft),
            !G && 0 < x.wrapperTop && (a += x.wrapperTop);
            for (var g = 0; g < x.slides.length; g++) {
                var d = d + e,
                e = "auto" == b.slidesPerView ? G ? x.h.getWidth(x.slides[g], !0) : x.h.getHeight(x.slides[g], !0) : z,
                f = d + e,
                h = !1;
                b.visibilityFullFit ? (d >= -a && -a + D >= f && (h = !0), -a >= d && f >= -a + D && (h = !0)) : (f > -a && -a + D >= f && (h = !0), d >= -a && -a + D > d && (h = !0), -a > d && f > -a + D && (h = !0)),
                h && c.push(x.slides[g])
            }
            0 == c.length && (c = [x.slides[x.activeIndex]]),
            x.visibleSlides = c
        };
        var P = void 0;
        x.startAutoplay = function() {
            return "undefined" != typeof P ? !1 : void(b.autoplay && (x.callPlugins("onAutoplayStart"), v()))
        },
        x.stopAutoplay = function(a) {
            P && clearTimeout(P),
            P = void 0,
            a && !b.autoplayDisableOnInteraction && x.wrapperTransitionEnd(function() {
                v()
            }),
            x.callPlugins("onAutoplayStop")
        },
        x.loopCreated = !1,
        x.removeLoopedSlides = function() {
            if (x.loopCreated) for (var a = 0; a < x.slides.length; a++) ! 0 === x.slides[a].getData("looped") && x.wrapper.removeChild(x.slides[a])
        },
        x.createLoop = function() {
            if (0 != x.slides.length) {
                x.loopedSlides = "auto" == b.slidesPerView ? b.loopedSlides || 1 : b.slidesPerView + b.loopAdditionalSlides,
                x.loopedSlides > x.slides.length && (x.loopedSlides = x.slides.length);
                var a, c = "",
                d = "",
                e = "",
                f = x.slides.length,
                g = Math.floor(x.loopedSlides / f),
                h = x.loopedSlides % f;
                for (a = 0; g * f > a; a++) {
                    var i = a;
                    a >= f && (i = a - f * Math.floor(a / f)),
                    e += x.slides[i].outerHTML
                }
                for (a = 0; h > a; a++) d += x.slides[a].outerHTML;
                for (a = f - h; f > a; a++) c += x.slides[a].outerHTML;
                for (y.innerHTML = c + e + y.innerHTML + e + d, x.loopCreated = !0, x.calcSlides(), a = 0; a < x.slides.length; a++)(a < x.loopedSlides || a >= x.slides.length - x.loopedSlides) && x.slides[a].setData("looped", !0);
                x.callPlugins("onCreateLoop")
            }
        },
        x.fixLoop = function() {
            var a;
            x.activeIndex < x.loopedSlides ? (a = x.slides.length - 3 * x.loopedSlides + x.activeIndex, x.swipeTo(a, 0, !1)) : x.activeIndex > x.slides.length - 2 * b.slidesPerView && (a = -x.slides.length + x.activeIndex + x.loopedSlides, x.swipeTo(a, 0, !1))
        },
        x.loadSlides = function() {
            var a = "";
            x.activeLoaderIndex = 0;
            for (var c = b.loader.slides,
            d = b.loader.loadAllSlides ? c.length: b.slidesPerView * (1 + b.loader.surroundGroups), e = 0; d > e; e++) a = "outer" == b.loader.slidesHTMLType ? a + c[e] : a + ("<" + b.slideElement + ' class="' + b.slideClass + '" data-swiperindex="' + e + '">' + c[e] + "</" + b.slideElement + ">");
            x.wrapper.innerHTML = a,
            x.calcSlides(!0),
            b.loader.loadAllSlides || x.wrapperTransitionEnd(x.reloadSlides, !0)
        },
        x.reloadSlides = function() {
            var a = b.loader.slides,
            c = parseInt(x.activeSlide().data("swiperindex"), 10);
            if (! (0 > c || c > a.length - 1)) {
                x.activeLoaderIndex = c;
                var d = Math.max(0, c - b.slidesPerView * b.loader.surroundGroups),
                e = Math.min(c + b.slidesPerView * (1 + b.loader.surroundGroups) - 1, a.length - 1);
                if (c > 0 && (x.setWrapperTranslate( - z * (c - d)), x.setWrapperTransition(0)), "reload" === b.loader.logic) {
                    for (var f = x.wrapper.innerHTML = "",
                    c = d; e >= c; c++) f += "outer" == b.loader.slidesHTMLType ? a[c] : "<" + b.slideElement + ' class="' + b.slideClass + '" data-swiperindex="' + c + '">' + a[c] + "</" + b.slideElement + ">";
                    x.wrapper.innerHTML = f
                } else {
                    for (var f = 1e3,
                    g = 0,
                    c = 0; c < x.slides.length; c++) {
                        var h = x.slides[c].data("swiperindex");
                        d > h || h > e ? x.wrapper.removeChild(x.slides[c]) : (f = Math.min(h, f), g = Math.max(h, g))
                    }
                    for (c = d; e >= c; c++) f > c && (d = document.createElement(b.slideElement), d.className = b.slideClass, d.setAttribute("data-swiperindex", c), d.innerHTML = a[c], x.wrapper.insertBefore(d, x.wrapper.firstChild)),
                    c > g && (d = document.createElement(b.slideElement), d.className = b.slideClass, d.setAttribute("data-swiperindex", c), d.innerHTML = a[c], x.wrapper.appendChild(d))
                }
                x.reInit(!0)
            }
        },
        x.calcSlides(),
        0 < b.loader.slides.length && 0 == x.slides.length && x.loadSlides(),
        b.loop && x.createLoop(),
        x.init(),
        e(),
        b.pagination && x.createPagination(!0),
        b.loop || 0 < b.initialSlide ? x.swipeTo(b.initialSlide, 0, !1) : x.updateActiveSlide(0),
        b.autoplay && x.startAutoplay(),
        x.centerIndex = x.activeIndex,
        b.onSwiperCreated && x.fireCallback(b.onSwiperCreated, x),
        x.callPlugins("onSwiperCreated")
    }
};
Swiper.prototype = {
    plugins: {},
    wrapperTransitionEnd: function(a, b) {
        function c() {
            if (a(e), e.params.queueEndCallbacks && (e._queueEndCallbacks = !1), !b) for (d = 0; d < g.length; d++) e.h.removeEventListener(f, g[d], c)
        }
        var d, e = this,
        f = e.wrapper,
        g = ["webkitTransitionEnd", "transitionend", "oTransitionEnd", "MSTransitionEnd", "msTransitionEnd"];
        if (a) for (d = 0; d < g.length; d++) e.h.addEventListener(f, g[d], c)
    },
    getWrapperTranslate: function(a) {
        var b, c, d = this.wrapper;
        return "undefined" == typeof a && (a = "horizontal" == this.params.mode ? "x": "y"),
        this.support.transforms && this.params.useCSS3Transforms ? (d = window.getComputedStyle(d, null), window.WebKitCSSMatrix ? d = new WebKitCSSMatrix(d.webkitTransform) : (d = d.MozTransform || d.OTransform || d.MsTransform || d.msTransform || d.transform || d.getPropertyValue("transform").replace("translate(", "matrix(1, 0, 0, 1,"), b = d.toString().split(",")), "x" == a && (c = window.WebKitCSSMatrix ? d.m41: parseFloat(16 == b.length ? b[12] : b[4])), "y" == a && (c = window.WebKitCSSMatrix ? d.m42: parseFloat(16 == b.length ? b[13] : b[5]))) : ("x" == a && (c = parseFloat(d.style.left, 10) || 0), "y" == a && (c = parseFloat(d.style.top, 10) || 0)),
        c || 0
    },
    setWrapperTranslate: function(a, b, c) {
        var d, e = this.wrapper.style,
        f = {
            x: 0,
            y: 0,
            z: 0
        };
        3 == arguments.length ? (f.x = a, f.y = b, f.z = c) : ("undefined" == typeof b && (b = "horizontal" == this.params.mode ? "x": "y"), f[b] = a),
        this.support.transforms && this.params.useCSS3Transforms ? (d = this.support.transforms3d ? "translate3d(" + f.x + "px, " + f.y + "px, " + f.z + "px)": "translate(" + f.x + "px, " + f.y + "px)", e.webkitTransform = e.MsTransform = e.msTransform = e.MozTransform = e.OTransform = e.transform = d) : (e.left = f.x + "px", e.top = f.y + "px"),
        this.callPlugins("onSetWrapperTransform", f),
        this.params.onSetWrapperTransform && this.fireCallback(this.params.onSetWrapperTransform, this, f)
    },
    setWrapperTransition: function(a) {
        var b = this.wrapper.style;
        b.webkitTransitionDuration = b.MsTransitionDuration = b.msTransitionDuration = b.MozTransitionDuration = b.OTransitionDuration = b.transitionDuration = a / 1e3 + "s",
        this.callPlugins("onSetWrapperTransition", {
            duration: a
        }),
        this.params.onSetWrapperTransition && this.fireCallback(this.params.onSetWrapperTransition, this, a)
    },
    h: {
        getWidth: function(a, b) {
            var c = window.getComputedStyle(a, null).getPropertyValue("width"),
            d = parseFloat(c);
            return (isNaN(d) || 0 < c.indexOf("%")) && (d = a.offsetWidth - parseFloat(window.getComputedStyle(a, null).getPropertyValue("padding-left")) - parseFloat(window.getComputedStyle(a, null).getPropertyValue("padding-right"))),
            b && (d += parseFloat(window.getComputedStyle(a, null).getPropertyValue("padding-left")) + parseFloat(window.getComputedStyle(a, null).getPropertyValue("padding-right"))),
            d
        },
        getHeight: function(a, b) {
            if (b) return a.offsetHeight;
            var c = window.getComputedStyle(a, null).getPropertyValue("height"),
            d = parseFloat(c);
            return (isNaN(d) || 0 < c.indexOf("%")) && (d = a.offsetHeight - parseFloat(window.getComputedStyle(a, null).getPropertyValue("padding-top")) - parseFloat(window.getComputedStyle(a, null).getPropertyValue("padding-bottom"))),
            b && (d += parseFloat(window.getComputedStyle(a, null).getPropertyValue("padding-top")) + parseFloat(window.getComputedStyle(a, null).getPropertyValue("padding-bottom"))),
            d
        },
        getOffset: function(a) {
            var b = a.getBoundingClientRect(),
            c = document.body,
            d = a.clientTop || c.clientTop || 0,
            c = a.clientLeft || c.clientLeft || 0,
            e = window.pageYOffset || a.scrollTop;
            return a = window.pageXOffset || a.scrollLeft,
            document.documentElement && !window.pageYOffset && (e = document.documentElement.scrollTop, a = document.documentElement.scrollLeft),
            {
                top: b.top + e - d,
                left: b.left + a - c
            }
        },
        windowWidth: function() {
            return window.innerWidth ? window.innerWidth: document.documentElement && document.documentElement.clientWidth ? document.documentElement.clientWidth: void 0
        },
        windowHeight: function() {
            return window.innerHeight ? window.innerHeight: document.documentElement && document.documentElement.clientHeight ? document.documentElement.clientHeight: void 0
        },
        windowScroll: function() {
            return "undefined" != typeof pageYOffset ? {
                left: window.pageXOffset,
                top: window.pageYOffset
            }: document.documentElement ? {
                left: document.documentElement.scrollLeft,
                top: document.documentElement.scrollTop
            }: void 0
        },
        addEventListener: function(a, b, c, d) {
            "undefined" == typeof d && (d = !1),
            a.addEventListener ? a.addEventListener(b, c, d) : a.attachEvent && a.attachEvent("on" + b, c)
        },
        removeEventListener: function(a, b, c, d) {
            "undefined" == typeof d && (d = !1),
            a.removeEventListener ? a.removeEventListener(b, c, d) : a.detachEvent && a.detachEvent("on" + b, c)
        }
    },
    setTransform: function(a, b) {
        var c = a.style;
        c.webkitTransform = c.MsTransform = c.msTransform = c.MozTransform = c.OTransform = c.transform = b
    },
    setTranslate: function(a, b) {
        var c = a.style,
        d = b.x || 0,
        e = b.y || 0,
        f = b.z || 0;
        c.webkitTransform = c.MsTransform = c.msTransform = c.MozTransform = c.OTransform = c.transform = this.support.transforms3d ? "translate3d(" + d + "px," + e + "px," + f + "px)": "translate(" + d + "px," + e + "px)",
        this.support.transforms || (c.left = d + "px", c.top = e + "px")
    },
    setTransition: function(a, b) {
        var c = a.style;
        c.webkitTransitionDuration = c.MsTransitionDuration = c.msTransitionDuration = c.MozTransitionDuration = c.OTransitionDuration = c.transitionDuration = b + "ms"
    },
    support: {
        touch: window.Modernizr && !0 === Modernizr.touch ||
        function() {
            return !! ("ontouchstart" in window || window.DocumentTouch && document instanceof DocumentTouch)
        } (),
        transforms3d: window.Modernizr && !0 === Modernizr.csstransforms3d ||
        function() {
            var a = document.createElement("div").style;
            return "webkitPerspective" in a || "MozPerspective" in a || "OPerspective" in a || "MsPerspective" in a || "perspective" in a
        } (),
        transforms: window.Modernizr && !0 === Modernizr.csstransforms ||
        function() {
            var a = document.createElement("div").style;
            return "transform" in a || "WebkitTransform" in a || "MozTransform" in a || "msTransform" in a || "MsTransform" in a || "OTransform" in a
        } (),
        transitions: window.Modernizr && !0 === Modernizr.csstransitions ||
        function() {
            var a = document.createElement("div").style;
            return "transition" in a || "WebkitTransition" in a || "MozTransition" in a || "msTransition" in a || "MsTransition" in a || "OTransition" in a
        } ()
    },
    browser: {
        ie8: function() {
            var a = -1;
            return "Microsoft Internet Explorer" == navigator.appName && null != /MSIE ([0-9]{1,}[.0-9]{0,})/.exec(navigator.userAgent) && (a = parseFloat(RegExp.$1)),
            -1 != a && 9 > a
        } (),
        ie10: window.navigator.msPointerEnabled
    }
},
(window.jQuery || window.Zepto) &&
function(a) {
    a.fn.swiper = function(b) {
        return b = new Swiper(a(this)[0], b),
        a(this).data("swiper", b),
        b
    }
} (window.jQuery || window.Zepto),
"undefined" != typeof module && (module.exports = Swiper),
function(a, b) {
    "object" == typeof exports ? module.exports = b() : "function" == typeof define && define.amd ? define(b) : a.Spinner = b()
} (this,
function() {
    "use strict";
    function a(a, b) {
        var c, d = document.createElement(a || "div");
        for (c in b) d[c] = b[c];
        return d
    }
    function b(a) {
        for (var b = 1,
        c = arguments.length; c > b; b++) a.appendChild(arguments[b]);
        return a
    }
    function c(a, b, c, d) {
        var e = ["opacity", b, ~~ (100 * a), c, d].join("-"),
        f = .01 + c / d * 100,
        g = Math.max(1 - (1 - a) / b * (100 - f), a),
        h = j.substring(0, j.indexOf("Animation")).toLowerCase(),
        i = h && "-" + h + "-" || "";
        return l[e] || (m.insertRule("@" + i + "keyframes " + e + "{0%{opacity:" + g + "}" + f + "%{opacity:" + a + "}" + (f + .01) + "%{opacity:1}" + (f + b) % 100 + "%{opacity:" + a + "}100%{opacity:" + g + "}}", m.cssRules.length), l[e] = 1),
        e
    }
    function d(a, b) {
        var c, d, e = a.style;
        for (b = b.charAt(0).toUpperCase() + b.slice(1), d = 0; d < k.length; d++) if (c = k[d] + b, void 0 !== e[c]) return c;
        return void 0 !== e[b] ? b: void 0
    }
    function e(a, b) {
        for (var c in b) a.style[d(a, c) || c] = b[c];
        return a
    }
    function f(a) {
        for (var b = 1; b < arguments.length; b++) {
            var c = arguments[b];
            for (var d in c) void 0 === a[d] && (a[d] = c[d])
        }
        return a
    }
    function g(a, b) {
        return "string" == typeof a ? a: a[b % a.length]
    }
    function h(a) {
        this.opts = f(a || {},
        h.defaults, n)
    }
    function i() {
        function c(b, c) {
            return a("<" + b + ' xmlns="urn:schemas-microsoft.com:vml" class="spin-vml">', c)
        }
        m.addRule(".spin-vml", "behavior:url(#default#VML)"),
        h.prototype.lines = function(a, d) {
            function f() {
                return e(c("group", {
                    coordsize: k + " " + k,
                    coordorigin: -j + " " + -j
                }), {
                    width: k,
                    height: k
                })
            }
            function h(a, h, i) {
                b(m, b(e(f(), {
                    rotation: 360 / d.lines * a + "deg",
                    left: ~~h
                }), b(e(c("roundrect", {
                    arcsize: d.corners
                }), {
                    width: j,
                    height: d.width,
                    left: d.radius,
                    top: -d.width >> 1,
                    filter: i
                }), c("fill", {
                    color: g(d.color, a),
                    opacity: d.opacity
                }), c("stroke", {
                    opacity: 0
                }))))
            }
            var i, j = d.length + d.width,
            k = 2 * j,
            l = 2 * -(d.width + d.length) + "px",
            m = e(f(), {
                position: "absolute",
                top: l,
                left: l
            });
            if (d.shadow) for (i = 1; i <= d.lines; i++) h(i, -2, "progid:DXImageTransform.Microsoft.Blur(pixelradius=2,makeshadow=1,shadowopacity=.3)");
            for (i = 1; i <= d.lines; i++) h(i);
            return b(a, m)
        },
        h.prototype.opacity = function(a, b, c, d) {
            var e = a.firstChild;
            d = d.shadow && d.lines || 0,
            e && b + d < e.childNodes.length && (e = e.childNodes[b + d], e = e && e.firstChild, e = e && e.firstChild, e && (e.opacity = c))
        }
    }
    var j, k = ["webkit", "Moz", "ms", "O"],
    l = {},
    m = function() {
        var c = a("style", {
            type: "text/css"
        });
        return b(document.getElementsByTagName("head")[0], c),
        c.sheet || c.styleSheet
    } (),
    n = {
        lines: 12,
        length: 7,
        width: 5,
        radius: 10,
        rotate: 0,
        corners: 1,
        color: "#000",
        direction: 1,
        speed: 1,
        trail: 100,
        opacity: .25,
        fps: 20,
        zIndex: 2e9,
        className: "spinner",
        top: "50%",
        left: "50%",
        position: "absolute"
    };
    h.defaults = {},
    f(h.prototype, {
        spin: function(b) {
            this.stop(); {
                var c = this,
                d = c.opts,
                f = c.el = e(a(0, {
                    className: d.className
                }), {
                    position: d.position,
                    width: 0,
                    zIndex: d.zIndex
                });
                d.radius + d.length + d.width
            }
            if (e(f, {
                left: d.left,
                top: d.top
            }), b && b.insertBefore(f, b.firstChild || null), f.setAttribute("role", "progressbar"), c.lines(f, c.opts), !j) {
                var g, h = 0,
                i = (d.lines - 1) * (1 - d.direction) / 2,
                k = d.fps,
                l = k / d.speed,
                m = (1 - d.opacity) / (l * d.trail / 100),
                n = l / d.lines; !
                function o() {
                    h++;
                    for (var a = 0; a < d.lines; a++) g = Math.max(1 - (h + (d.lines - a) * n) % l * m, d.opacity),
                    c.opacity(f, a * d.direction + i, g, d);
                    c.timeout = c.el && setTimeout(o, ~~ (1e3 / k))
                } ()
            }
            return c
        },
        stop: function() {
            var a = this.el;
            return a && (clearTimeout(this.timeout), a.parentNode && a.parentNode.removeChild(a), this.el = void 0),
            this
        },
        lines: function(d, f) {
            function h(b, c) {
                return e(a(), {
                    position: "absolute",
                    width: f.length + f.width + "px",
                    height: f.width + "px",
                    background: b,
                    boxShadow: c,
                    transformOrigin: "left",
                    transform: "rotate(" + ~~ (360 / f.lines * k + f.rotate) + "deg) translate(" + f.radius + "px,0)",
                    borderRadius: (f.corners * f.width >> 1) + "px"
                })
            }
            for (var i, k = 0,
            l = (f.lines - 1) * (1 - f.direction) / 2; k < f.lines; k++) i = e(a(), {
                position: "absolute",
                top: 1 + ~ (f.width / 2) + "px",
                transform: f.hwaccel ? "translate3d(0,0,0)": "",
                opacity: f.opacity,
                animation: j && c(f.opacity, f.trail, l + k * f.direction, f.lines) + " " + 1 / f.speed + "s linear infinite"
            }),
            f.shadow && b(i, e(h("#000", "0 0 4px #000"), {
                top: "2px"
            })),
            b(d, b(i, h(g(f.color, k), "0 0 1px rgba(0,0,0,.1)")));
            return d
        },
        opacity: function(a, b, c) {
            b < a.childNodes.length && (a.childNodes[b].style.opacity = c)
        }
    });
    var o = e(a("group"), {
        behavior: "url(#default#VML)"
    });
    return ! d(o, "transform") && o.adj ? i() : j = d(o, "animation"),
    h
}),
function(a, b) {
    "object" == typeof exports ? module.exports = b() : "function" == typeof define && define.amd ? define(["./spin"], b) : a.Ladda = b(a.Spinner)
} (this,
function(a) {
    "use strict";
    function b(a) {
        if ("undefined" == typeof a) return void console.warn("Ladda button target must be defined.");
        a.querySelector(".ladda-label") || (a.innerHTML = '<span class="ladda-label">' + a.innerHTML + "</span>");
        var b = e(a),
        c = document.createElement("span");
        c.className = "ladda-spinner",
        a.appendChild(c);
        var d, f = {
            start: function() {
                return a.setAttribute("disabled", ""),
                a.setAttribute("data-loading", ""),
                clearTimeout(d),
                b.spin(c),
                this.setProgress(0),
                this
            },
            startAfter: function(a) {
                return clearTimeout(d),
                d = setTimeout(function() {
                    f.start()
                },
                a),
                this
            },
            stop: function() {
                return a.removeAttribute("disabled"),
                a.removeAttribute("data-loading"),
                clearTimeout(d),
                d = setTimeout(function() {
                    b.stop()
                },
                1e3),
                this
            },
            toggle: function() {
                return this.isLoading() ? this.stop() : this.start(),
                this
            },
            setProgress: function(b) {
                b = Math.max(Math.min(b, 1), 0);
                var c = a.querySelector(".ladda-progress");
                0 === b && c && c.parentNode ? c.parentNode.removeChild(c) : (c || (c = document.createElement("div"), c.className = "ladda-progress", a.appendChild(c)), c.style.width = (b || 0) * a.offsetWidth + "px")
            },
            enable: function() {
                return this.stop(),
                this
            },
            disable: function() {
                return this.stop(),
                a.setAttribute("disabled", ""),
                this
            },
            isLoading: function() {
                return a.hasAttribute("data-loading")
            },
            getTarget: function() {
                return a
            }
        };
        return g.push(f),
        f
    }
    function c(a, c) {
        c = c || {};
        var d = [];
        "string" == typeof a ? d = f(document.querySelectorAll(a)) : "object" == typeof a && "string" == typeof a.nodeName && (d = [a]);
        for (var e = 0,
        g = d.length; g > e; e++) !
        function() {
            var a = d[e];
            if ("function" == typeof a.addEventListener) {
                var f = b(a),
                g = -1;
                a.addEventListener("click",
                function() {
                    f.startAfter(1),
                    "number" == typeof c.timeout && (clearTimeout(g), g = setTimeout(f.stop, c.timeout)),
                    "function" == typeof c.callback && c.callback.apply(null, [f])
                },
                !1)
            }
        } ()
    }
    function d() {
        for (var a = 0,
        b = g.length; b > a; a++) g[a].stop()
    }
    function e(b) {
        var c, d = b.offsetHeight;
        d > 32 && (d *= .8),
        b.hasAttribute("data-spinner-size") && (d = parseInt(b.getAttribute("data-spinner-size"), 10)),
        b.hasAttribute("data-spinner-color") && (c = b.getAttribute("data-spinner-color"));
        var e = 12,
        f = .2 * d,
        g = .6 * f,
        h = 7 > f ? 2 : 3;
        return new a({
            color: c || "#fff",
            lines: e,
            radius: f,
            length: g,
            width: h,
            zIndex: "auto",
            top: "50%",
            left: "50%",
            className: ""
        })
    }
    function f(a) {
        for (var b = [], c = 0; c < a.length; c++) b.push(a[c]);
        return b
    }
    var g = [];
    return {
        bind: c,
        create: b,
        stopAll: d
    }
});
genericMap = function() {
    function a(a, b) {
        r = b,
        s = a.container,
        t = $("#" + s),
        u = a.width,
        v = a.height;
        var c = a.bgColor,
        d = a.configFile,
        e = a.cssClass;
        C = a.pinColor,
        D = a.pathColor,
        E = a.pathHoverColor || "#cccccc",
        q = a.customContentParser,
        f(c, e),
        m(d, C, D),
        $(".nav-left").click(function() {
            F.swipePrev()
        }),
        $(".nav-right").click(function() {
            F.swipeNext()
        }),
        $("#map-modal").on("hidden.bs.modal",
        function() {
            $(".swiper-wrapper").empty(),
            $(".swiper-nav").show(),
            $("#da-slider").show()
        })
    }
    function b() {
        var a = t.innerWidth(),
        b = a / u,
        c = t.innerHeight() * b;
        w.setAttr("width", a),
        w.setAttr("height", c),
        w.setAttr("scale", {
            x: b,
            y: b
        }),
        K = {
            x: b,
            y: b
        },
        w.draw(),
        J = !1
    }
    function c(a) {
        x.destroyChildren(),
        G = [],
        H = [],
        a && 1 != a || d(!0);
        for (var c in A) {
            var e = A[c];
            k(e.x, e.y, e.id)
        }
        J && b()
    }
    function d(a) {
        x.destroyChildren(),
        G = [],
        H = [];
        for (var c in B) {
            var d = B[c];
            i(d.curveData, d.id, a)
        }
        J && b()
    }
    function e(a) {
        var b = [{
            label: "EUROPE",
            x: 90,
            y: 237
        },
        {
            label: "MEDITERRANEAN",
            x: 30,
            y: 322,
            width: 100
        },
        {
            label: "AFRICA",
            x: 80,
            y: 370
        },
        {
            label: "MIDDLE EAST",
            x: 190,
            y: 385,
            width: 50
        },
        {
            label: "CENTRAL ASIA",
            x: 212,
            y: 245
        },
        {
            label: "EAST ASIA",
            x: 373,
            y: 265,
            width: 50
        },
        {
            label: "INDIA",
            x: 305,
            y: 372
        },
        {
            label: "SOUTHEAST ASIA",
            x: 440,
            y: 400
        },
        {
            label: "OCEANIA",
            x: 505,
            y: 463
        },
        {
            label: "AUSTRALIA",
            x: 425,
            y: 502
        },
        {
            label: "AMERICAS",
            x: 885,
            y: 370
        }];
        for (label in b) {
            var c = new Kinetic.Text({
                x: b[label].x,
                y: b[label].y,
                width: b[label].width ? b[label].width: 75,
                text: b[label].label,
                fontSize: 11,
                align: "center",
                fontFamily: "Arial",
                fill: "#3b3837"
            });
            a.add(c)
        }
    }
    function f(a, b) {
        b && (t.addClass(b), t.css("background", a)),
        w = new Kinetic.Stage({
            container: s,
            width: u,
            height: v
        });
        var c = Math.floor((u - y) / 2),
        d = Math.floor((v - z) / 2),
        f = new Kinetic.Layer({
            x: c,
            y: d
        });
        x = new Kinetic.Layer({
            x: c
        }),
        w.add(f),
        w.add(x);
        var h = new Image;
        h.onload = function() {
            var a = new Kinetic.Image({
                x: 0,
                y: 0,
                image: h,
                width: y,
                height: z
            });
            f.add(a),
            e(f),
            f.draw()
        },
        h.src = base.getRootPath() + "/static/img/map/genoMap.png";
        var i = w.scale(),
        j = $("#" + s).innerWidth();
        $(window).resize(function() {
            var a = "#" + s;
            g(w, a, j, i)
        })
    }
    function g(a, b, c, d) {
        var e = $(b).innerWidth(),
        f = 600,
        g = e / c * d.x,
        h = {
            x: g,
            y: g
        };
        a.setAttr("width", e),
        a.setAttr("height", f * g),
        a.setAttr("scale", h),
        a.draw()
    }
    function h(a, b, c, d) {
        var e = new Kinetic.Shape({
            x: b.startX,
            y: b.startY,
            stroke: c,
            strokeWidth: 2,
            drawFunc: function(a) {
                a.beginPath(),
                a.moveTo(0, 0),
                a.quadraticCurveTo(b.ctrlX - b.startX, b.ctrlY - b.startY, b.endX - b.startX, b.endY - b.startY),
                a.strokeShape(this)
            }
        });
        a.add(e);
        var f;
        b.pointDeg && (f = new Kinetic.RegularPolygon({
            radius: 10,
            sides: 3,
            rotation: b.pointDeg,
            fill: c,
            x: b.endX,
            y: b.endY
        }), a.add(f)),
        H.push({
            id: "pathGroup-" + d,
            path: e,
            tip: f ? f: null
        })
    }
    function i(a, b, c) {
        var d = c ? .9 : 1,
        e = c ? "#e9b500": D,
        f = new Kinetic.Group({
            opacity: d,
            id: "pathGroup-" + b
        });
        if (Array.isArray(a)) for (var g in a) !
        function() {
            var c = a[g];
            h(f, c, e, b)
        } ();
        else h(f, a, e, b);
        c || (f.on("mouseover",
        function() {
            j(b)
        }), f.on("mouseout",
        function() {
            j()
        }), f.on("click touchstart",
        function() {
            l(b, "path")
        })),
        G.push(f),
        x.add(f),
        x.draw()
    }
    function j(a) {
        var b = "pathGroup-" + a;
        if (a) for (var c = 0; c < H.length; c++) if (H[c].id !== b) {
            var a = "pathGroup-" + c;
            H[c].path.stroke(E),
            H[c].tip && (H[c].tip.stroke(E), H[c].tip.fill(E))
        } else {
            var d = H[c].path.getParent(),
            e = H[c].path;
            I || (I = new Kinetic.Circle({
                id: "endPin",
                x: e.x(),
                y: e.y(),
                fill: D,
                radius: 7
            }), d.add(I)),
            d.moveToTop()
        } else {
            I && (I.destroy(), I = null);
            for (var c = 0; c < H.length; c++) H[c].path.stroke(D),
            H[c].tip && (H[c].tip.stroke(D), H[c].tip.fill(D))
        }
        x.draw()
    }
    function k(a, b, c) {
        var d = new Kinetic.Circle({
            radius: 15,
            fill: C,
            name: "hoverable",
            x: a,
            y: b
        }),
        e = new Kinetic.Circle({
            radius: 7,
            fill: "black",
            opacity: .33,
            x: a,
            y: b
        }),
        f = new Kinetic.RegularPolygon({
            radius: 15,
            sides: 3,
            rotation: 180,
            fill: C,
            name: "hoverable",
            x: a,
            y: b + 15
        }),
        g = new Kinetic.Group;
        g.add(d),
        g.add(e),
        g.add(f),
        g.on("click touchstart",
        function() {
            l(c, "pin")
        }),
        x.add(g),
        x.draw()
    }
    function l(a, b) {
        var c = $("#map-modal"),
        d = $("#" + s).offset().top,
        e = $(window).scrollTop(),
        f = "pin" == b ? A[a].content: B[a].content,
        g = $(".swiper-wrapper"),
        h = f.title,
        i = f.subtitle,
        j = f.body;
        if (q) {
            var k = q(f);
            h = k.title,
            i = k.subtitle,
            j = k.body
        }
        "path" === b && (h = "单倍群: " + h, c.find(".modal-copy").append("<div class='expertUsers'><b>专家用户的分组</b><p>" + B[a].haplogroups.expert + "</p></div>")),
        c.find(".modal-title").text(h),
        c.find(".modal-subtitle").text(i),
        c.find(".modal-copy").html(j);
        var l = f.images.length;
        l && 0 !== l ? 1 === l && $(".swiper-nav").hide() : $("#da-slider").hide();
        for (var m = 0; l > m; m++) {
            var n = f.images[m],
            o = '<div class="swiper-slide"><div class="da-img"><img src="' + n.src + '"/></div><div class="slider-text"><p class="slider-text-credit">' + n.credit + "</p></div></div>";
            g.append(o)
        }
        var p = "#da-slider";
        F = $(p + " .swiper-container").swiper({
            mode: "horizontal",
            loop: !0
        }),
        c.modal("show"),
        d - e > 0 && c.css("top", d - e + 20)
    }
    function m(a) {
        $.ajax({
            url: a,
            success: function(a) {
                var b = a.pins;
                for (pin in b) {
                    var c = b[pin];
                    A[c.id] = c
                }
                var d = a.paths;
                for (path in d) {
                    var c = d[path];
                    B[c.id] = c
                }
                r && r(0)
            },
            error: function(a, b, c) {
                console.log(b + " / " + c),
                r && r( - 1, c)
            }
        })
    }
    function n(a, b) {
        var c = $(".zoom-percent");
        b = .1;
        var d = w.scale(),
        e = d.x,
        f = d.y;
        "in" === a ? (e += .1, f += .1) : (e -= .1, f -= .1);
        var g = {
            x: e,
            y: f
        },
        h = 1 + (g.x - K.x),
        i = Math.round(100 * h); (80 > i || i > 180) && (g = d, i = Math.round(100 * (1 + (g.x - K.x)))),
        g.x <= K.x && g.y <= K.y ? w.draggable(!1) : g.x > K.x && g.y > K.y && w.draggable(!0),
        c.text(i + "%"),
        w.setAttr("scale", g),
        w.draw()
    }
    function o() {
        var a = $(".zoom-percent");
        w.draggable(!1),
        $(".drag-text").hide(),
        w.setAttr("scale", K),
        w.x(0),
        w.y(0),
        a.text("100%"),
        w.draw()
    }
    function p(a) {}
    var q, r = "",
    s = "",
    t = "",
    u = "",
    v = "",
    w = "",
    x = "",
    y = 1122,
    z = 700,
    A = [],
    B = [],
    C = "",
    D = "",
    E = "",
    F = "",
    G = [],
    H = [],
    I = "",
    J = !0,
    K = {};
    return {
        init: a,
        showPins: c,
        showPaths: d,
        zoom: n,
        resetZoom: o,
        pan: p
    }
} ();