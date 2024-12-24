cask "airmail-beta" do
  # version :latest
  version "6.1.6+717,554"
  # sha256 :no_check
  sha256 "db0d5759f6c042897000a0e20fee4b6be03e7f2478d5cae3c436aa331914f7cc"

  url "https://install.appcenter.ms/api/v0.1/apps/airmail-devs-organization/airmail-beta/distribution_groups/all-users-of-airmail-beta/releases/#{version.after_comma}" do |page|
    require "json"
    [JSON.parse(page)["download_url"], { verified: "azureedge.net" }]
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

  disable! date: "2024-09-26", because: :moved_to_mas

  depends_on macos: ">= :sierra"

  app "Airmail Beta.app"

  uninstall quit: "it.bloop.airmail.beta11"
end
