# yeoleobun/homebrew-tap

Official Homebrew tap for [Quota](https://github.com/yeoleobun/Quota), [macos-use](https://github.com/yeoleobun/macos-use), and [Grove](https://github.com/yeoleobun/Grove).

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

## Upgrade

```bash
brew upgrade --cask grove
brew upgrade --cask quota
```
