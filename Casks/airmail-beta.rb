cask 'airmail-beta' do
  version '4.0,584,450:319416917c51df46dc3735596313a880fa441c26'
  sha256 '09f6728d73531b98150f888f913dffed5d31dbc01ec93bb9d9ab29ea96d5457f'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma.after_comma.before_colon}?format=zip&mctoken=#{version.after_comma.after_comma.after_colon}"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04'
  name 'Airmail'
  homepage 'https://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
