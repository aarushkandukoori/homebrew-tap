# aarushkandukoori/homebrew-tap

Homebrew casks for my apps.

## Grayout

[Grayout](https://github.com/aarushkandukoori/grayout) is a macOS menu-bar app
that asks Claude or GPT whether you are clearly not working, and drains the
color from every display when you are.

```bash
brew install --cask aarushkandukoori/tap/grayout
```

Grayout is not notarized by Apple yet, so macOS refuses the first launch. Open
it once and click **Open Anyway** in System Settings > Privacy & Security, or
clear the download flag yourself:

```bash
xattr -dr com.apple.quarantine /Applications/Grayout.app
```

The [install page](https://aarushkandukoori.github.io/grayout/install.html)
walks through both. (Homebrew 6 removed `--no-quarantine`, so that flag no
longer works.)
