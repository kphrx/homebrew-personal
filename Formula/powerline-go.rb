class PowerlineGo < Formula
  desc "Powerline style prompt for your shell, written in go"
  homepage "https://github.com/justjanne/powerline-go"
  url "https://github.com/justjanne/powerline-go/archive/v1.13.0.tar.gz"
  sha256 "0c0d8a2aca578391edc0120f6cbb61f9ef5571190c07a978932348b0489d00ea"

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
