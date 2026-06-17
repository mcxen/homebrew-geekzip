cask "geekzip" do
  version "0.3.0"
  sha256 "7d1a8846def34696f398bbda73b3e2914719b166819bd2624b4d8e31bd91e059"
  url "https://github.com/mcxen/GeekZip/releases/download/v#{version}/GeekZip-macos-arm64.app.zip"
  name "GeekZip"
  desc "Native smart archive compression and extraction tool"
  homepage "https://github.com/mcxen/GeekZip"
  livecheck do
    url :url
    strategy :github_latest
  end
  depends_on arch: :arm64
  depends_on macos: :monterey
  app "GeekZip.app"
end
