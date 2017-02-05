// Generated by CoffeeScript 1.9.3
(function() {
  var InsertMode, PassNextKeyMode, root,
    extend1 = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty,
    indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  InsertMode = (function(superClass) {
    extend1(InsertMode, superClass);

    function InsertMode(options) {
      var defaults, handleKeyEvent;
      if (options == null) {
        options = {};
      }
      this.permanent = options.permanent;
      this.global = options.global;
      handleKeyEvent = (function(_this) {
        return function(event) {
          var ref, target;
          if (!_this.isActive(event)) {
            return _this.continueBubbling;
          }
          if (ref = KeyboardUtils.getKeyCharString(event), indexOf.call(Settings.get("passNextKeyKeys"), ref) >= 0) {
            new PassNextKeyMode;
            return _this.suppressEvent;
          }
          if (!(event.type === 'keydown' && KeyboardUtils.isEscape(event))) {
            return _this.passEventToPage;
          }
          DomUtils.suppressKeyupAfterEscape(handlerStack);
          target = event.srcElement;
          if (target && DomUtils.isFocusable(target)) {
            target.blur();
          } else if ((target != null ? target.shadowRoot : void 0) && _this.insertModeLock) {
            _this.insertModeLock.blur();
          }
          _this.exit(event, event.srcElement);
          return _this.suppressEvent;
        };
      })(this);
      defaults = {
        name: "insert",
        indicator: !this.permanent && !Settings.get("hideHud") ? "Insert mode" : void 0,
        keypress: handleKeyEvent,
        keyup: handleKeyEvent,
        keydown: handleKeyEvent
      };
      InsertMode.__super__.constructor.call(this, extend(defaults, options));
      this.insertModeLock = options.targetElement && DomUtils.isEditable(options.targetElement) ? options.targetElement : document.activeElement && DomUtils.isEditable(document.activeElement) ? document.activeElement : null;
      this.push({
        _name: "mode-" + this.id + "-focus",
        "blur": (function(_this) {
          return function(event) {
            return _this.alwaysContinueBubbling(function() {
              var target;
              target = event.target;
              if (_this.insertModeLock && target === _this.insertModeLock) {
                return _this.exit(event, target);
              }
            });
          };
        })(this),
        "focus": (function(_this) {
          return function(event) {
            return _this.alwaysContinueBubbling(function() {
              var eventListeners, i, len, ref, shadowRoot, type;
              if (_this.insertModeLock !== event.target && DomUtils.isFocusable(event.target)) {
                return _this.activateOnElement(event.target);
              } else if (event.target.shadowRoot) {
                shadowRoot = event.target.shadowRoot;
                eventListeners = {};
                ref = ["focus", "blur"];
                for (i = 0, len = ref.length; i < len; i++) {
                  type = ref[i];
                  eventListeners[type] = (function(type) {
                    return function(event) {
                      return handlerStack.bubbleEvent(type, event);
                    };
                  })(type);
                  shadowRoot.addEventListener(type, eventListeners[type], true);
                }
                return handlerStack.push({
                  _name: "shadow-DOM-input-mode",
                  blur: function(event) {
                    var listener, results;
                    if (event.target.shadowRoot === shadowRoot) {
                      handlerStack.remove();
                      results = [];
                      for (type in eventListeners) {
                        if (!hasProp.call(eventListeners, type)) continue;
                        listener = eventListeners[type];
                        results.push(shadowRoot.removeEventListener(type, listener, true));
                      }
                      return results;
                    }
                  }
                });
              }
            });
          };
        })(this)
      });
      if (this.permanent) {
        InsertMode.permanentInstance = this;
      }
    }

    InsertMode.prototype.isActive = function(event) {
      var ref;
      if (event === InsertMode.suppressedEvent) {
        return false;
      }
      if (this.insertModeLock || this.global) {
        return true;
      }
      if ((ref = document.activeElement) != null ? ref.isContentEditable : void 0) {
        this.activateOnElement(document.activeElement);
      }
      return this.insertModeLock !== null;
    };

    InsertMode.prototype.activateOnElement = function(element) {
      if (this.debug && this.permanent) {
        this.log(this.id + ": activating (permanent)");
      }
      return this.insertModeLock = element;
    };

    InsertMode.prototype.exit = function(_, target) {
      if ((target && target === this.insertModeLock) || this.global || target === void 0) {
        if (this.debug && this.permanent && this.insertModeLock) {
          this.log(this.id + ": deactivating (permanent)");
        }
        this.insertModeLock = null;
        if (!this.permanent) {
          return InsertMode.__super__.exit.call(this);
        }
      }
    };

    InsertMode.suppressedEvent = null;

    InsertMode.suppressEvent = function(event) {
      return this.suppressedEvent = event;
    };

    return InsertMode;

  })(Mode);

  PassNextKeyMode = (function(superClass) {
    extend1(PassNextKeyMode, superClass);

    function PassNextKeyMode(count) {
      var keyDownCount, seenKeyDown;
      if (count == null) {
        count = 1;
      }
      seenKeyDown = false;
      keyDownCount = 0;
      PassNextKeyMode.__super__.constructor.call(this, {
        name: "pass-next-key",
        indicator: "Pass next key.",
        exitOnBlur: window,
        keypress: (function(_this) {
          return function() {
            return _this.passEventToPage;
          };
        })(this),
        keydown: (function(_this) {
          return function() {
            seenKeyDown = true;
            keyDownCount += 1;
            return _this.passEventToPage;
          };
        })(this),
        keyup: (function(_this) {
          return function() {
            if (seenKeyDown) {
              if (!(0 < --keyDownCount)) {
                if (!(0 < --count)) {
                  _this.exit();
                }
              }
            }
            return _this.passEventToPage;
          };
        })(this)
      });
    }

    return PassNextKeyMode;

  })(Mode);

  root = typeof exports !== "undefined" && exports !== null ? exports : window;

  root.InsertMode = InsertMode;

  root.PassNextKeyMode = PassNextKeyMode;

}).call(this);
