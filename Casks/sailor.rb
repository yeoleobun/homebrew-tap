cask "sailor" do
  version "0.1.4"
  sha256 "72a93b29fe9123220dd75c6ea8b3649339a8ab072e5e46658abf1eff35410680"

  url "https://github.com/yeoleobun/Sailor/releases/download/v#{version}/Sailor-macos-arm64.zip"
  name "Sailor"
  desc "Menu bar utility that remembers and auto-switches macOS Network Locations by Wi-Fi SSID"
  homepage "https://github.com/yeoleobun/Sailor"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Sailor.app"

  preflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{staged_path}}/Sailor.app"]
  end

  uninstall quit: "com.sailor.app"

  zap trash: "~/Library/Application Support/Sailor"
end
