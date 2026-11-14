cask "quota" do
  version "0.1.3"
  sha256 "8d4f6ef68c22bd1c2af692e4271f8a515b2512c543ef3b8213f84f43681b3c65"

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
