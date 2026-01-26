# dotfiles

My personal config bundle for macOS and Linux-ish workflows. Think of it as my terminal and window-manager brain in version control (yes, it also forgets where it put its keys).

## What lives here

- Aerospace window manager config
- Fish shell config
- Neovim (LazyVim-based) config
- Tmux config
- WezTerm config
- Starship prompt config
- Htop and Neofetch configs
- Zsh RC
- OpenCode CLI config (local tooling)

## How this works (symlinks, not magic)

Dotfiles are just files your apps read from standard locations like `~/.config` or `~/.zshrc`. This repo keeps them in one place, and you create symlinks so apps still see them where they expect. GNU Stow is a neat helper that creates those symlinks for you.

### Install (recommended)

```bash
git clone https://github.com/yourname/dotfiles ~/dotfiles
cd ~/dotfiles

# Link everything under .config (aerospace, fish, nvim, tmux, etc.)
stow --target="$HOME" .config

# Link zshrc explicitly (not inside .config)
ln -s "$PWD/.zshrc" "$HOME/.zshrc"
```

### Removing unwanted stuff

`node_modules`, `.env`, and vendored plugin directories are local-only. They are excluded from the tree below and should stay out of version control for a cleaner repo.

## Tree (pruned)

Output of `tree -a -I ".git|node_modules|plugins|.env"` (trimmed for readability):

```
.
├── .config
│   ├── aerospace
│   │   └── aerospace.toml
│   ├── fish
│   │   ├── functions
│   │   └── config.fish
│   ├── htop
│   │   └── htoprc
│   ├── neofetch
│   │   └── config.conf
│   ├── nvim
│   │   ├── lua
│   │   │   └── config
│   │   ├── .gitignore
│   │   ├── .neoconf.json
│   │   ├── init.lua
│   │   ├── lazy-lock.json
│   │   ├── lazyvim.json
│   │   ├── LICENSE
│   │   ├── README.md
│   │   └── stylua.toml
│   ├── opencode
│   │   ├── .gitignore
│   │   ├── AGENTS.md
│   │   ├── bun.lock
│   │   ├── opencode.json
│   │   └── package.json
│   ├── tmux
│   │   └── tmux.conf
│   ├── wezterm
│   │   └── wezterm.lua
│   └── starship.toml
├── .gitignore
├── .zshrc
├── README.md
└── tsconfig.json
```

## Notes

- Neovim config lives in `./.config/nvim`. Run `:Lazy sync` inside nvim after first launch.
- Tmux plugins are intentionally not listed in the tree; use `tpm` if you want them re-installed.
- OpenCode config is under `./.config/opencode`. If you run it locally, use `bun install` from that folder.

If something explodes, it was a feature until it wasn’t. Happy dotfiling.
