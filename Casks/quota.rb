cask "quota" do
  version "0.2.0"
  sha256 "e6a762f86aea62840dbbdb586cb281d50e67c7506e9509bc27df8ee09384833f"

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
