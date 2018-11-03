cask 'nowplayingtweet' do
  version '0.5'
  sha256 'b2b81f450ff62eb4bbbd4d321a9dde020ebb21e32fbc5d23c72b258de7b36dc5'

  # github.com/kPherox/NowPlayingTweet was verified as official when first introduced to the cask
  url "https://github.com/kPherox/NowPlayingTweet/releases/download/#{version}/NowPlayingTweet-#{version}.zip"
  appcast 'https://github.com/kPherox/NowPlayingTweet/releases.atom'
  name 'NowPlayingTweet'
  homepage 'https://github.kr-kp.com/NowPlayingTweet'

  app 'NowPlayingTweet.app'
end
