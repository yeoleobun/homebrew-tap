cask "lollipop" do
  version "1.0.0"
  sha256 "6be1283a248e414a5bd9c4fc9fbbdb6fb4b42ee8204ee34daf04594e0b98b5be"

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
