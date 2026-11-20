cask "sailor" do
  version "0.1.1"
  sha256 "28be6d5cc9acd9d1b8b17b2d7fb465482aabf66376277e63b179a2873f12594b"

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
