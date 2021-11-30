cask "airmail-beta" do
  # version :latest
  version "6.0+679,526"
  # sha256 :no_check
  sha256 "07992139ee8d3796f7493645504981afec36c36100805ff5c40f86970b05731e"

  url do
    require "open-uri"
    require "json"
    base_url = "https://install.appcenter.ms/api/v0.1/apps/airmail-devs-organization/airmail-beta/distribution_groups/all-users-of-airmail-beta/releases/#{version.after_comma}"
    URI(base_url).open do |release_page|
      latest_json = JSON.parse(release_page.read)
      latest_json["download_url"]
    end
  end
  name "Airmail Beta"
  desc "Lightning Fast Mail Client"
  homepage "https://airmailapp.com/beta/"

  livecheck do
    url "https://install.appcenter.ms/api/v0.1/apps/airmail-devs-organization/airmail-beta/distribution_groups/all-users-of-airmail-beta/releases/latest"
    strategy :page_match do |page|
      require "json"
      latest_json = JSON.parse(page)
      "#{latest_json["short_version"]}+#{latest_json["version"]},#{latest_json["id"]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Airmail Beta.app"

  uninstall quit: "it.bloop.airmail.beta11"
end
