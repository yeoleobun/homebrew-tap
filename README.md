# yeoleobun/homebrew-tap

Official Homebrew tap for [Quota](https://github.com/yeoleobun/Quota), [macos-use](https://github.com/yeoleobun/macos-use), [Grove](https://github.com/yeoleobun/Grove), [Sailor](https://github.com/yeoleobun/Sailor), and [Lollipop](https://github.com/yeoleobun/Lollipop).

## Setup Tap

```bash
brew tap yeoleobun/tap
brew trust yeoleobun/tap 2>/dev/null || true
```

## Install macos-use

Native macOS CLI and MCP server for Apple Silicon on macOS 27 or later.

```sh
brew install yeoleobun/tap/macos-use
macos-use status
```

## Install Apps

### Grove
Lightweight native macOS dashboard for managing Git worktrees and local branches.

```bash
brew install --cask yeoleobun/tap/grove
```

### Quota
Menu bar indicator for OpenAI Codex and Google Antigravity subscription usage.

```bash
brew install --cask yeoleobun/tap/quota
```

### Sailor
Lightweight native macOS menu bar utility that remembers and auto-switches Network Locations by Wi-Fi SSID.

```bash
brew install --cask yeoleobun/tap/sailor
```

### Lollipop
Native macOS YouTube Music client built with SwiftUI and Liquid Glass.

```bash
brew install --cask yeoleobun/tap/lollipop
```

## Upgrade

```bash
brew upgrade --cask grove
brew upgrade --cask quota
brew upgrade --cask sailor
brew upgrade --cask lollipop
```
