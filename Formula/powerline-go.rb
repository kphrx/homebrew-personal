class PowerlineGo < Formula
  desc "Powerline style prompt for your shell, written in go"
  homepage "https://github.com/justjanne/powerline-go"
  url "https://github.com/justjanne/powerline-go/archive/v1.12.1.tar.gz"
  sha256 "13a8a0ea117748df45dff9ecaf618879b220a9122c586e437be4bc3f5bac159c"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/justjanne/powerline-go").install buildpath.children
    cd "src/github.com/justjanne/powerline-go" do
      system "go", "get", "-d"
      system "go", "build"
      bin.install "powerline-go"
      prefix.install_metafiles
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test powerline-go`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
