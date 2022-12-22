class Qshell < Formula
  desc "Shell Tools for Qiniu Cloud"
  homepage "https://qiniu.com/"
  url "https://github.com/qiniu/qshell/releases/download/v2.9.1/qshell-v2.9.1-darwin-amd64.tar.gz"
  sha256 "6237aed31729d23f6bb165f439fb096dad7f14aea13af32ebc1484055ae3ea14"
  license "MIT"

  def install
    bin.install "qshell" => "qshell"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test qshell`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
