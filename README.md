# yeoleobun/homebrew-tap

Official Homebrew tap for [Quota](https://github.com/yeoleobun/Quota) and [Grove](https://github.com/yeoleobun/Grove).

## Setup Tap

```bash
brew tap yeoleobun/tap
brew trust yeoleobun/tap 2>/dev/null || true
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
