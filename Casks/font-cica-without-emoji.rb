cask "font-cica-without-emoji" do
  version "5.0.2"
  sha256 "0574e5ebcbb33d445f7bea55fec46b9f67bd9b606b840b2d33b13f1e3c7aeef6"

  url "https://github.com/miiton/Cica/releases/download/v#{version}/Cica_v#{version}_without_emoji.zip"
  name "Cica"
  desc "プログラミング用日本語等幅フォント Cica(シカ)"
  homepage "https://github.com/miiton/Cica"

  conflicts_with cask: "homebrew/cask-fonts/font-cica"

  font "Cica-Bold.ttf"
  font "Cica-BoldItalic.ttf"
  font "Cica-Regular.ttf"
  font "Cica-RegularItalic.ttf"
end
