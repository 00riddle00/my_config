// Generated by CoffeeScript 1.9.3
(function() {
  var DomUtils, root;

  DomUtils = {
    documentReady: (function() {
      var callbacks, isReady, onDOMContentLoaded, ref;
      ref = [document.readyState !== "loading", []], isReady = ref[0], callbacks = ref[1];
      if (!isReady) {
        window.addEventListener("DOMContentLoaded", onDOMContentLoaded = function() {
          var callback, i, len;
          window.removeEventListener("DOMContentLoaded", onDOMContentLoaded);
          isReady = true;
          for (i = 0, len = callbacks.length; i < len; i++) {
            callback = callbacks[i];
            callback();
          }
          return callbacks = null;
        });
      }
      return function(callback) {
        if (isReady) {
          return callback();
        } else {
          return callbacks.push(callback);
        }
      };
    })(),
    documentComplete: (function() {
      var callbacks, isComplete, onLoad, ref;
      ref = [document.readyState === "complete", []], isComplete = ref[0], callbacks = ref[1];
      if (!isComplete) {
        window.addEventListener("load", onLoad = function() {
          var callback, i, len;
          window.removeEventListener("load", onLoad);
          isComplete = true;
          for (i = 0, len = callbacks.length; i < len; i++) {
            callback = callbacks[i];
            callback();
          }
          return callbacks = null;
        });
      }
      return function(callback) {
        if (isComplete) {
          return callback();
        } else {
          return callbacks.push(callback);
        }
      };
    })(),
    createElement: function(tagName) {
      var element;
      element = document.createElement(tagName);
      if (element instanceof HTMLElement) {
        this.createElement = function(tagName) {
          return document.createElement(tagName);
        };
        return element;
      } else {
        this.createElement = function(tagName) {
          return document.createElementNS("http://www.w3.org/1999/xhtml", tagName);
        };
        return this.createElement(tagName);
      }
    },
    addElementList: function(els, overlayOptions) {
      var el, i, len, parent;
      parent = this.createElement("div");
      if (overlayOptions.id != null) {
        parent.id = overlayOptions.id;
      }
      if (overlayOptions.className != null) {
        parent.className = overlayOptions.className;
      }
      for (i = 0, len = els.length; i < len; i++) {
        el = els[i];
        parent.appendChild(el);
      }
      document.documentElement.appendChild(parent);
      return parent;
    },
    removeElement: function(el) {
      return el.parentNode.removeChild(el);
    },
    isTopFrame: function() {
      return window.top === window.self;
    },
    makeXPath: function(elementArray) {
      var element, i, len, xpath;
      xpath = [];
      for (i = 0, len = elementArray.length; i < len; i++) {
        element = elementArray[i];
        xpath.push(".//" + element, ".//xhtml:" + element);
      }
      return xpath.join(" | ");
    },
    evaluateXPath: function(xpath, resultType) {
      var contextNode, namespaceResolver;
      contextNode = document.webkitIsFullScreen ? document.webkitFullscreenElement : document.documentElement;
      namespaceResolver = function(namespace) {
        if (namespace === "xhtml") {
          return "http://www.w3.org/1999/xhtml";
        } else {
          return null;
        }
      };
      return document.evaluate(xpath, contextNode, namespaceResolver, resultType, null);
    },
    getVisibleClientRect: function(element, testChildren) {
      var child, childClientRect, clientRect, clientRects, computedStyle, i, isInlineZeroHeight, j, len, len1, ref, ref1;
      if (testChildren == null) {
        testChildren = false;
      }
      clientRects = (function() {
        var i, len, ref, results;
        ref = element.getClientRects();
        results = [];
        for (i = 0, len = ref.length; i < len; i++) {
          clientRect = ref[i];
          results.push(Rect.copy(clientRect));
        }
        return results;
      })();
      isInlineZeroHeight = function() {
        var elementComputedStyle, isInlineZeroFontSize;
        elementComputedStyle = window.getComputedStyle(element, null);
        isInlineZeroFontSize = (0 === elementComputedStyle.getPropertyValue("display").indexOf("inline")) && (elementComputedStyle.getPropertyValue("font-size") === "0px");
        isInlineZeroHeight = function() {
          return isInlineZeroFontSize;
        };
        return isInlineZeroFontSize;
      };
      for (i = 0, len = clientRects.length; i < len; i++) {
        clientRect = clientRects[i];
        if ((clientRect.width === 0 || clientRect.height === 0) && testChildren) {
          ref = element.children;
          for (j = 0, len1 = ref.length; j < len1; j++) {
            child = ref[j];
            computedStyle = window.getComputedStyle(child, null);
            if (computedStyle.getPropertyValue("float") === "none" && !((ref1 = computedStyle.getPropertyValue("position")) === "absolute" || ref1 === "fixed") && !(clientRect.height === 0 && isInlineZeroHeight() && 0 === computedStyle.getPropertyValue("display").indexOf("inline"))) {
              continue;
            }
            childClientRect = this.getVisibleClientRect(child, true);
            if (childClientRect === null || childClientRect.width < 3 || childClientRect.height < 3) {
              continue;
            }
            return childClientRect;
          }
        } else {
          clientRect = this.cropRectToVisible(clientRect);
          if (clientRect === null || clientRect.width < 3 || clientRect.height < 3) {
            continue;
          }
          computedStyle = window.getComputedStyle(element, null);
          if (computedStyle.getPropertyValue('visibility') !== 'visible') {
            continue;
          }
          return clientRect;
        }
      }
      return null;
    },
    cropRectToVisible: function(rect) {
      var boundedRect;
      boundedRect = Rect.create(Math.max(rect.left, 0), Math.max(rect.top, 0), rect.right, rect.bottom);
      if (boundedRect.top >= window.innerHeight - 4 || boundedRect.left >= window.innerWidth - 4) {
        return null;
      } else {
        return boundedRect;
      }
    },
    getClientRectsForAreas: function(imgClientRect, areas) {
      var area, coords, diff, i, len, r, rect, rects, ref, shape, x, x1, x2, y, y1, y2;
      rects = [];
      for (i = 0, len = areas.length; i < len; i++) {
        area = areas[i];
        coords = area.coords.split(",").map(function(coord) {
          return parseInt(coord, 10);
        });
        shape = area.shape.toLowerCase();
        if (shape === "rect" || shape === "rectangle") {
          x1 = coords[0], y1 = coords[1], x2 = coords[2], y2 = coords[3];
        } else if (shape === "circle" || shape === "circ") {
          x = coords[0], y = coords[1], r = coords[2];
          diff = r / Math.sqrt(2);
          x1 = x - diff;
          x2 = x + diff;
          y1 = y - diff;
          y2 = y + diff;
        } else if (shape === "default") {
          ref = [0, 0, imgClientRect.width, imgClientRect.height], x1 = ref[0], y1 = ref[1], x2 = ref[2], y2 = ref[3];
        } else {
          x1 = coords[0], y1 = coords[1], x2 = coords[2], y2 = coords[3];
        }
        rect = Rect.translate(Rect.create(x1, y1, x2, y2), imgClientRect.left, imgClientRect.top);
        rect = this.cropRectToVisible(rect);
        if (rect && !isNaN(rect.top)) {
          rects.push({
            element: area,
            rect: rect
          });
        }
      }
      return rects;
    },
    isSelectable: function(element) {
      var unselectableTypes;
      if (!(element instanceof Element)) {
        return false;
      }
      unselectableTypes = ["button", "checkbox", "color", "file", "hidden", "image", "radio", "reset", "submit"];
      return (element.nodeName.toLowerCase() === "input" && unselectableTypes.indexOf(element.type) === -1) || element.nodeName.toLowerCase() === "textarea" || element.isContentEditable;
    },
    isEditable: function(element) {
      var ref;
      return (this.isSelectable(element)) || ((ref = element.nodeName) != null ? ref.toLowerCase() : void 0) === "select";
    },
    isEmbed: function(element) {
      var ref, ref1;
      return (ref = (ref1 = element.nodeName) != null ? ref1.toLowerCase() : void 0) === "embed" || ref === "object";
    },
    isFocusable: function(element) {
      return element && (this.isEditable(element) || this.isEmbed(element));
    },
    isDOMDescendant: function(parent, child) {
      var node;
      node = child;
      while (node !== null) {
        if (node === parent) {
          return true;
        }
        node = node.parentNode;
      }
      return false;
    },
    isSelected: function(element) {
      var containerNode, node, selection;
      selection = document.getSelection();
      if (element.isContentEditable) {
        node = selection.anchorNode;
        return node && this.isDOMDescendant(element, node);
      } else {
        if (selection.type === "Range" && selection.isCollapsed) {
          containerNode = selection.anchorNode.childNodes[selection.anchorOffset];
          return element === containerNode;
        } else {
          return false;
        }
      }
    },
    simulateSelect: function(element) {
      if (element === document.activeElement && DomUtils.isEditable(document.activeElement)) {
        return handlerStack.bubbleEvent("click", {
          target: element
        });
      } else {
        element.focus();
        if (element.tagName.toLowerCase() !== "textarea") {
          try {
            if (element.selectionStart === 0 && element.selectionEnd === 0) {
              return element.setSelectionRange(element.value.length, element.value.length);
            }
          } catch (_error) {}
        }
      }
    },
    simulateClick: function(element, modifiers) {
      var event, eventSequence, i, len, results;
      eventSequence = ["mouseover", "mousedown", "mouseup", "click"];
      results = [];
      for (i = 0, len = eventSequence.length; i < len; i++) {
        event = eventSequence[i];
        results.push(this.simulateMouseEvent(event, element, modifiers));
      }
      return results;
    },
    simulateMouseEvent: (function() {
      var lastHoveredElement;
      lastHoveredElement = void 0;
      return function(event, element, modifiers) {
        var mouseEvent;
        if (modifiers == null) {
          modifiers = {};
        }
        if (event === "mouseout") {
          if (element == null) {
            element = lastHoveredElement;
          }
          lastHoveredElement = void 0;
          if (element == null) {
            return;
          }
        } else if (event === "mouseover") {
          this.simulateMouseEvent("mouseout", void 0, modifiers);
          lastHoveredElement = element;
        }
        mouseEvent = document.createEvent("MouseEvents");
        mouseEvent.initMouseEvent(event, true, true, window, 1, 0, 0, 0, 0, modifiers.ctrlKey, modifiers.altKey, modifiers.shiftKey, modifiers.metaKey, 0, null);
        return element.dispatchEvent(mouseEvent);
      };
    })(),
    addFlashRect: function(rect) {
      var flashEl;
      flashEl = this.createElement("div");
      flashEl.classList.add("vimiumReset");
      flashEl.classList.add("vimiumFlash");
      flashEl.style.left = rect.left + "px";
      flashEl.style.top = rect.top + "px";
      flashEl.style.width = rect.width + "px";
      flashEl.style.height = rect.height + "px";
      document.documentElement.appendChild(flashEl);
      return flashEl;
    },
    flashRect: function(rect) {
      var flashEl;
      flashEl = this.addFlashRect(rect);
      return setTimeout((function() {
        return DomUtils.removeElement(flashEl);
      }), 400);
    },
    suppressPropagation: function(event) {
      return event.stopImmediatePropagation();
    },
    suppressEvent: function(event) {
      event.preventDefault();
      return this.suppressPropagation(event);
    },
    suppressKeyupAfterEscape: function(handlerStack) {
      return handlerStack.push({
        _name: "dom_utils/suppressKeyupAfterEscape",
        keyup: function(event) {
          if (!KeyboardUtils.isEscape(event)) {
            return true;
          }
          this.remove();
          return false;
        }
      });
    },
    getElementWithFocus: function(selection, backwards) {
      var o, r, t;
      r = t = selection.getRangeAt(0);
      if (selection.type === "Range") {
        r = t.cloneRange();
        r.collapse(backwards);
      }
      t = r.startContainer;
      if (t.nodeType === 1) {
        t = t.childNodes[r.startOffset];
      }
      o = t;
      while (o && o.nodeType !== 1) {
        o = o.previousSibling;
      }
      t = o || (t != null ? t.parentNode : void 0);
      return t;
    },
    getSelectionFocusElement: function() {
      var sel;
      sel = window.getSelection();
      if (sel.focusNode == null) {
        return null;
      } else if (sel.focusNode === sel.anchorNode && sel.focusOffset === sel.anchorOffset) {
        return sel.focusNode.childNodes[sel.focusOffset];
      } else if (sel.focusNode.nodeType !== sel.focusNode.ELEMENT_NODE) {
        return sel.focusNode.parentElement;
      } else {
        return sel.focusNode;
      }
    },
    getContainingElement: function(element) {
      return element.getDestinationInsertionPoints()[0] || element.parentElement;
    },
    windowIsTooSmall: function() {
      return window.innerWidth < 3 || window.innerHeight < 3;
    }
  };

  root = typeof exports !== "undefined" && exports !== null ? exports : window;

  root.DomUtils = DomUtils;

}).call(this);
