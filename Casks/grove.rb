cask "grove" do
  version "0.1.0"
  sha256 "f83ccfa018c667e7681bafae52102d106a7e6bb2de76882541a533097a19a1ff"

  url "https://github.com/yeoleobun/Grove/releases/download/v#{version}/Grove-macos-arm64.zip"
  name "Grove"
  desc "Native macOS dashboard for managing Git worktrees and local branches"
  homepage "https://github.com/yeoleobun/Grove"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Grove.app"

  preflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{staged_path}}/Grove.app"]
  end

  uninstall quit: "dev.grove.macos"

  zap trash: "~/Library/Application Support/Grove"
end
