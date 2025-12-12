cask "font-pending-mono" do
  version "0.0.3"
  sha256 "b673a17307bc3f7662a78ecda3d289e9b8fbe3642553890c3d917d9caee21cb8"

  url "https://github.com/yuru7/pending-mono/releases/download/v#{version}/PendingMono_v#{version}.zip"
  name "Pending Mono"
  desc "Pending Mono は、Commit Mono と日本語フォント BIZ UDゴシック を合成したプログラミング向けフォントです。"
  homepage "https://github.com/yuru7/pending-mono"

  livecheck do
    url :url
  end

  font "PendingMono_v#{version}/PendingMono-Bold.ttf"
  font "PendingMono_v#{version}/PendingMono-BoldItalic.ttf"
  font "PendingMono_v#{version}/PendingMono-Regular.ttf"
  font "PendingMono_v#{version}/PendingMono-Italic.ttf"
end
