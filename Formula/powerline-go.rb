class PowerlineGo < Formula
  desc "Powerline style prompt for your shell, written in go"
  homepage "https://github.com/justjanne/powerline-go"
  url "https://github.com/justjanne/powerline-go/archive/v1.12.1.tar.gz"
  sha256 "13a8a0ea117748df45dff9ecaf618879b220a9122c586e437be4bc3f5bac159c"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"] = "on"

    srcpath = buildpath/"src/github.com/justjanne/powerline-go"
    srcpath.install buildpath.children

    cd srcpath do
      system "go", "mod", "init"
      system "go", "mod", "tidy"
      system "go", "build"
      bin.install "powerline-go"
      prefix.install_metafiles
    end
  end

  test do
    shell_output(bin/"powerline-go -help 2&>1", 2)
  end
end
