cask "geekzip" do
  version "0.2.2"
  sha256 "81ff62bc94fd47595bd61db840eb72c5960b0b3cd5ac023db05f437780e6a578"

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
