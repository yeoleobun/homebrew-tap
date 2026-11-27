cask "quota" do
  version "0.3.2"
  sha256 "96b424589fd837ed4a8aedfae6266a09c6504b045315f6a4d7efe965bd6ebde2"

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
