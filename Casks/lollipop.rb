cask "lollipop" do
  version "1.0.1"
  sha256 "b90dac1b3a0e16ba5a58e26c1e549312741db5bef59102547bcdb49a6d7c3032"

  url "https://github.com/yeoleobun/Lollipop/releases/download/v#{version}/Lollipop-#{version}-macOS-arm64.zip"
  name "Lollipop"
  desc "Native macOS YouTube Music client built with SwiftUI and Liquid Glass"
  homepage "https://github.com/yeoleobun/Lollipop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Lollipop.app"

  preflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{staged_path}}/Lollipop.app"]
  end

  uninstall quit: "com.lollipop.mac"

  zap trash: [
    "~/Library/Application Support/Lollipop",
    "~/Library/Caches/com.lollipop.mac",
    "~/Library/WebKit/com.lollipop.mac",
  ]
end
