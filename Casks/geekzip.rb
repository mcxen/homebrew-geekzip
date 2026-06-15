cask "geekzip" do
  version "0.2.1"
  sha256 "cf21cb433611e9b8e4f576c41af9bb08b9bd79db92ddf5ef48b6843674866788"

  url "https://github.com/mcxen/GeekZip/releases/download/v#{version}/GeekZip-macos-arm64.app.zip"
  name "GeekZip"
  desc "Native smart archive compression and extraction tool"
  homepage "https://github.com/mcxen/GeekZip"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "GeekZip.app"
end
