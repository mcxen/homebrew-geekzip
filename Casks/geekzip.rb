cask "geekzip" do
  version "0.2.3"
  sha256 "41c16db9a37abcd0cb761ac08250655fe6d738a0db594180f6e76c8ef14de8e8"

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
