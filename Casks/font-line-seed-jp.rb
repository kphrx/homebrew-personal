cask "font-line-seed-jp" do
  version "20221014"
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_Sans_JP.zip"
  name "LINE Seed JP"
  desc "LINE Seed Sans is LINE's exclusive typeface"
  homepage "https://seed.line.me/index_jp.html"

  # TTF for App
  font "LINE_Seed_JP_#{version}/App/TTF/LINESeedJP_A_TTF_Rg.ttf"
  font "LINE_Seed_JP_#{version}/App/TTF/LINESeedJP_A_TTF_Eb.ttf"
  font "LINE_Seed_JP_#{version}/App/TTF/LINESeedJP_A_TTF_Th.ttf"
  font "LINE_Seed_JP_#{version}/App/TTF/LINESeedJP_A_TTF_Bd.ttf"
  # OTF for App
  font "LINE_Seed_JP_#{version}/App/OTF/LINESeedJP_A_OTF_Eb.otf"
  font "LINE_Seed_JP_#{version}/App/OTF/LINESeedJP_A_OTF_Bd.otf"
  font "LINE_Seed_JP_#{version}/App/OTF/LINESeedJP_A_OTF_Th.otf"
  font "LINE_Seed_JP_#{version}/App/OTF/LINESeedJP_A_OTF_Rg.otf"
  # WOFF for Web
  font "LINE_Seed_JP_#{version}/Web/WOFF/LINESeedJP_OTF_Bd.woff"
  font "LINE_Seed_JP_#{version}/Web/WOFF/LINESeedJP_OTF_Eb.woff"
  font "LINE_Seed_JP_#{version}/Web/WOFF/LINESeedJP_OTF_Rg.woff"
  font "LINE_Seed_JP_#{version}/Web/WOFF/LINESeedJP_OTF_Th.woff"
  # WOFF2 for Web
  font "LINE_Seed_JP_#{version}/Web/WOFF2/LINESeedJP_OTF_Rg.woff2"
  font "LINE_Seed_JP_#{version}/Web/WOFF2/LINESeedJP_OTF_Bd.woff2"
  font "LINE_Seed_JP_#{version}/Web/WOFF2/LINESeedJP_OTF_Eb.woff2"
  font "LINE_Seed_JP_#{version}/Web/WOFF2/LINESeedJP_OTF_Th.woff2"
  # EOT for Web
  font "LINE_Seed_JP_#{version}/Web/EOT/LINESeedJP_TTF_Eb.eot"
  font "LINE_Seed_JP_#{version}/Web/EOT/LINESeedJP_TTF_Bd.eot"
  font "LINE_Seed_JP_#{version}/Web/EOT/LINESeedJP_TTF_Th.eot"
  font "LINE_Seed_JP_#{version}/Web/EOT/LINESeedJP_TTF_Rg.eot"
  # TTF for Desktop
  font "LINE_Seed_JP_#{version}/Desktop/TTF/LINESeedJP_TTF_Th.ttf"
  font "LINE_Seed_JP_#{version}/Desktop/TTF/LINESeedJP_TTF_Bd.ttf"
  font "LINE_Seed_JP_#{version}/Desktop/TTF/LINESeedJP_TTF_Eb.ttf"
  font "LINE_Seed_JP_#{version}/Desktop/TTF/LINESeedJP_TTF_Rg.ttf"
  # OTF for Desktop
  font "LINE_Seed_JP_#{version}/Desktop/OTF/LINESeedJP_OTF_Rg.otf"
  font "LINE_Seed_JP_#{version}/Desktop/OTF/LINESeedJP_OTF_Bd.otf"
  font "LINE_Seed_JP_#{version}/Desktop/OTF/LINESeedJP_OTF_Th.otf"
  font "LINE_Seed_JP_#{version}/Desktop/OTF/LINESeedJP_OTF_Eb.otf"
end
