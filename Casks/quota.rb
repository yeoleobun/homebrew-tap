cask "quota" do
  version "0.1.2"
  sha256 "208923f59a4116ec268af139e745d313502c312bd1a8990e6f6b46de44197300"

  url "https://github.com/yeoleobun/Quota/releases/download/v#{version}/Quota-macos-arm64.zip"
  name "Quota"
  desc "Menu bar indicator for OpenAI Codex and Google Antigravity subscription usage"
  homepage "https://github.com/yeoleobun/Quota"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Quota.app"

  preflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{staged_path}}/Quota.app"]
  end

  uninstall quit: "local.quota.app"

  zap trash: "~/.config/quota"
end
