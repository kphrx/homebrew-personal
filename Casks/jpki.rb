cask "jpki" do
  version "3.5"
  sha256 "b2d3b6175975df77a3757633dd5f9fd316e0592cf192374f4b2f75faac06065c"

  url "https://www2.jpki.go.jp/client/download/101/JPKIMac_0#{version.major}-0#{version.minor}_01-00.dmg"
  name "JPKI"
  desc "JPKI利用者クライアントソフト"
  homepage "https://www.jpki.go.jp/download/mac.html"

  livecheck do
    url "https://www.jpki.go.jp/download/mac.html"
    regex(/Ver ((\d)+.(\d)+(.(\d)+)?)/)
  end

  depends_on macos: ">= :catalina"

  pkg "JPKIInstall.pkg"

  uninstall quit:   "jp.go.jpki.JPKIUpdateReminderSetting",
            script: {
              executable: "/Applications/Utilities/JPKI.localized/JPKIUninstall.app/Contents/Resources/JPKIUninstall.command",
              input:      ["Y"],
              sudo:       true,
            }
end
