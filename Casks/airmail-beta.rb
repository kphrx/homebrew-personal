cask "airmail-beta" do
  # version :latest
  version "6.1.3+694,536"
  # sha256 :no_check
  sha256 "efe648025d9b67c596f755829b661c571b6cdd4f695d8effa5d18e35755c8e73"

  url do
    require "open-uri"
    require "json"
    base_url = "https://install.appcenter.ms/api/v0.1/apps/airmail-devs-organization/airmail-beta/distribution_groups/all-users-of-airmail-beta/releases/#{version.after_comma}"
    URI(base_url).open do |release_page|
      latest_json = JSON.parse(release_page.read)
      [latest_json["download_url"], { verified: "appcenter-filemanagement-distrib4ede6f06e.azureedge.net" }]
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
