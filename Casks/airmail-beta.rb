cask "airmail-beta" do
  # version :latest
  # sha256 :no_check
  version "4.5,656:514"
  sha256 "e8ce88f7cb6969bdec0cc48f68256529f505214c2dbd1781a45c363fa6fbc066"

  url do
    require "open-uri"
    require "json"
    # base_url = "https://install.appcenter.ms/api/v0.1/apps/airmail-devs-organization/airmail-beta/distribution_groups/all-users-of-airmail-beta/releases/latest"
    base_url = "https://install.appcenter.ms/api/v0.1/apps/airmail-devs-organization/airmail-beta/distribution_groups/all-users-of-airmail-beta/releases/#{version.after_comma.after_colon}"
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
      "#{latest_json["short_version"]},#{latest_json["version"]}:#{latest_json["id"]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Airmail Beta.app"

  uninstall quit: "it.bloop.airmail.beta11"
end
