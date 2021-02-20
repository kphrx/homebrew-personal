cask "nowplayingtweet" do
  version "0.5.1"
  sha256 "d796b563d9461abffded73232fa69c4ba12f41867dd4ff058f631fc1f45d0572"

  url "https://github.com/kPherox/NowPlayingTweet/releases/download/#{version}/NowPlayingTweet-#{version}.zip",
      verified: "github.com/kPherox/NowPlayingTweet"
  appcast "https://github.com/kPherox/NowPlayingTweet/releases.atom"
  name "NowPlayingTweet"
  homepage "https://github.kr-kp.com/NowPlayingTweet"

  app "NowPlayingTweet.app"
end
