This is my lazyvim config file for writing academic papers in neovim. This config file follows this structure:

```text
~/.config/nvim
├── init.lua
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   └── plugins
│       ├── blink.lua
│       ├── luasnip.lua
│       ├── texlab.lua
│       ├── vimtex.lua
│       ├── zotero.lua
│       ├── latex-template.lua
│       └── ...
├── snippets
│   └── tex.lua
└── templates
    ├── conference
    │   ├── conference.tex
    │   ├── conference.cls
    │   ├── references.bib
    │   └── plots/
    └── journal
        ├── journal.tex
        ├── IEEEtran.cls
        ├── IEEEabrv.bib
        └── plots/
```


To do: 
  - Add latex presentation template
  - Enrich tex.lua with more custom snippets
