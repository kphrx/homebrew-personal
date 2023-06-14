cask "jpki" do
  version "3.6"
  sha256 "573b0cb731fd48b40b7c021a805d50d43f3f1f9f72eecf0d22fc62b83eab23e3"

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
