cask "elk" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "8f189ae1ca373b491240cfd95c5d7faf10a0058dcbfda15d6694a32186fd01b7",
         intel: "c4f4901241776fa276b4420435db606635c13124f152e9a612bd42f5e9bafe80"

  url "https://github.com/elk-zone/elk-native/releases/download/v#{version}/Elk_#{version}_macos_#{arch}.dmg"
  name "Elk Native"
  desc "Native version of Elk, a nimble Mastodon web client"
  homepage "https://github.com/elk-zone/elk-native"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Elk.app"
end
