cask "elk" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "eb72fe051d57f382f4077a44f45a5a8b76ca9de963efb0e3caa8a99f8b1fbd59",
         intel: "531de55c25395fcc9382f65cca99484166d74b184bef14559d7849c9459f7125"

  url "https://github.com/elk-zone/elk-native/releases/download/elk-native-v#{version}/Elk_#{version}_macos_#{arch}.dmg"
  name "Elk Native"
  desc "Native version of Elk, a nimble Mastodon web client"
  homepage "https://github.com/elk-zone/elk-native"

  livecheck do
    url :url
    regex %r{href=.*?/tag/elk-native-v?(\d+(?:\.\d+)+)["' >]}i
    strategy :github_latest
  end

  app "Elk.app"
end
