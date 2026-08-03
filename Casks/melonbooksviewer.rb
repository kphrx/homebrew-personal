cask "melonbooksviewer" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.melonbooks.co.jp/user_data/packages/default/app/melonbooks-viewer-mac.zip"
  name "Melonbooks Viewer"
  name "メロンブックス 電子書籍"
  desc "Ebook viewer"
  homepage "https://www.melonbooks.co.jp/ebook/list.php?category_id=77"

  deprecate! date: "2026-03-31", because: :discontinued
  depends_on maximum_macos: :golden_gate

  pkg "installer-signed-melon.pkg"

  uninstall pkgutil: "jp.co.melonbooks.viewer"
end
