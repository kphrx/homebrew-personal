cask "font-line-seed-kr" do
  version :latest
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_Sans_KR.zip"
  name "LINE Seed KR"
  desc "LINE Seed Sans is LINE's exclusive typeface"
  homepage "https://seed.line.me/index_kr.html"

  # TTF for App and Desktop
  font "LINE Seed Sans KR/LINESeedSansKR_TTF/LINESeedSansKR-Rg.ttf"
  font "LINE Seed Sans KR/LINESeedSansKR_TTF/LINESeedSansKR-Bd.ttf"
  font "LINE Seed Sans KR/LINESeedSansKR_TTF/LINESeedSansKR-Th.ttf"
  # OTF for App and Desktop
  font "LINE Seed Sans KR/LINESeedSansKR_OTF/LINESeedSansKR-Rg.otf"
  font "LINE Seed Sans KR/LINESeedSansKR_OTF/LINESeedSansKR-Bd.otf"
  font "LINE Seed Sans KR/LINESeedSansKR_OTF/LINESeedSansKR-Th.otf"
  # WOFF for Web
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/woff/LINESeedSansKR-Bd.woff"
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/woff/LINESeedSansKR-Rg.woff"
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/woff/LINESeedSansKR-Th.woff"
  # WOFF2 for Web
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/woff2/LINESeedSansKR-Th.woff2"
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/woff2/LINESeedSansKR-Rg.woff2"
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/woff2/LINESeedSansKR-Bd.woff2"
  # EOT for Web
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/eot/LINESeedSansKR-Rg.eot"
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/eot/LINESeedSansKR-Th.eot"
  font "LINE Seed Sans KR/LINESeedSansKR_Webfont/eot/LINESeedSansKR-Bd.eot"
end
