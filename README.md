# aarushkandukoori/homebrew-tap

Homebrew casks for my apps.

## Grayout

[Grayout](https://github.com/aarushkandukoori/grayout) is a macOS menu-bar app
that asks Claude or GPT whether you are clearly not working, and drains the
color from every display when you are.

```bash
brew install --cask aarushkandukoori/tap/grayout
```

Grayout is not notarized by Apple yet, so Homebrew's quarantine flag will make
macOS refuse the first launch. Either install without it:

```bash
brew install --cask --no-quarantine aarushkandukoori/tap/grayout
```

or launch once and click **Open Anyway** in System Settings > Privacy &
Security. The [install page](https://aarushkandukoori.github.io/grayout/install.html)
walks through it.
