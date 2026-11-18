class MacosUse < Formula
  desc "Inspect and control native macOS apps over MCP"
  homepage "https://github.com/yeoleobun/macos-use"
  url "https://github.com/yeoleobun/macos-use/releases/download/v2.0.0/macos-use-2.0.0-macos-arm64.tar.gz"
  version "2.0.0"
  sha256 "9c94f8b130f224afaf7d2dc3a1a24563501a1b2af29f08590bd4dfbc2ddcc46b"
  license "0BSD"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  def install
    bin.install "macos-use"
  end

  test do
    request = { jsonrpc: "2.0", id: 1, method: "tools/list" }.to_json
    response = JSON.parse(pipe_output("#{bin}/macos-use mcp", request + "\n", 0))
    assert_includes response.fetch("result").fetch("tools").map { |tool| tool.fetch("name") }, "observe_screen"
  end
end
