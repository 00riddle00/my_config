### VimVixen (Firefox 57.0 and later)

```
{
  "keymaps": {
    "0": { "type": "scroll.home" },
    ":": { "type": "command.show" },
    "o": { "type": "command.show.open", "alter": false },
    "O": { "type": "command.show.open", "alter": true },
    "t": { "type": "command.show.tabopen", "alter": false },
    "T": { "type": "command.show.tabopen", "alter": true },
    "w": { "type": "command.show.winopen", "alter": false },
    "W": { "type": "command.show.winopen", "alter": true },
    "b": { "type": "command.show.buffer" },
    "k": { "type": "scroll.vertically", "count": -1 },
    "j": { "type": "scroll.vertically", "count": 1 },
    "h": { "type": "scroll.horizonally", "count": -1 },
    "l": { "type": "scroll.horizonally", "count": 1 },
    "<C-Y>": { "type": "scroll.vertically", "count": -1 },
    "<C-E>": { "type": "scroll.vertically", "count": 1 },
    "<C-U>": { "type": "scroll.pages", "count": -0.5 },
    "<C-D>": { "type": "scroll.pages", "count": 0.5 },
    "<C-B>": { "type": "scroll.pages", "count": -1 },
    "<C-F>": { "type": "scroll.pages", "count": 1 },
    "gg": { "type": "scroll.top" },
    "G": { "type": "scroll.bottom" },
    "$": { "type": "scroll.end" },
    "d": { "type": "tabs.duplicate" },
    "u": { "type": "tabs.reopen" },
    "K": { "type": "tabs.prev", "count": 1 },
    "J": { "type": "tabs.next", "count": 1 },
    "g0": { "type": "tabs.first" },
    "g$": { "type": "tabs.last" },
    "r": { "type": "tabs.reload", "cache": false },
    "R": { "type": "tabs.reload", "cache": true },
    "zp": { "type": "tabs.pin.toggle" },
    "s": { "type": "tabs.pin.toggle" },
    "zd": { "type": "tabs.duplicate" },
    "zi": { "type": "zoom.in" },
    "zo": { "type": "zoom.out" },
    "zz": { "type": "zoom.neutral" },
    "f": { "type": "follow.start", "newTab": false },
    "F": { "type": "follow.start", "newTab": true },
    "H": { "type": "navigate.history.prev" },
    "L": { "type": "navigate.history.next" },
    "[[": { "type": "navigate.link.prev" },
    "]]": { "type": "navigate.link.next" },
    "gu": { "type": "navigate.parent" },
    "gU": { "type": "navigate.root" },
    "y": { "type": "urls.yank" },
    "/": { "type": "find.start" },
    "n": { "type": "find.next" },
    "N": { "type": "find.prev" },
    "<S-Esc>": { "type": "addon.toggle.enabled" }
  },
  "search": {
    "default": "duckduckgo",
    "engines": {
      "duckduckgo": "https://duckduckgo.com/?q={}"
    }
  }
}
```

### Vimium (Chrome)
Copy these mappings to 'vimium' settings in chrome

```
map <C-s> togglePinTab
map <C-u> scrollPageUp
map <C-d> scrollPageDown
map d duplicateTab
map <A-0> lastTab
map f LinkHints.activateModeToOpenInNewTab
map F LinkHints.activateMode
map t Vomnibar.activateTabSelection
```
