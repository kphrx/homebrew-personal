cask 'airmail-beta' do
  version '3.7.0,552,394'
  sha256 '71bc6f43a5ffd8ec24276550b4e7239cce2c97ea6cc57ef47f9fd5e6086a65d2'

  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04'
  name 'Airmail'
  homepage 'https://rink.hockeyapp.net/apps/84be85c3331ee1d222fd7f0b59e41b04'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
