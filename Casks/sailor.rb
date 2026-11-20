cask "sailor" do
  version "0.1.0"
  sha256 "0e96cea67f7f92fbaa4c299f99ec4cffb414df0f1381dc01c37c720ecb2277aa"

  url "https://github.com/yeoleobun/Sailor/releases/download/v#{version}/Sailor-macos-arm64.zip"
  name "Sailor"
  desc "Menu bar utility that remembers and auto-switches macOS Network Locations by Wi-Fi SSID"
  homepage "https://github.com/yeoleobun/Sailor"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Sailor.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Sailor.app"]
  end

  uninstall quit: "com.sailor.app"

  zap trash: "~/Library/Application Support/Sailor"
end
