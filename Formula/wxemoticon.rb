class Wxemoticon < Formula
  desc "macOS 微信表情包工具：抓取 db key / 导出 URL / 导出表情包图片"
  homepage "https://github.com/liusheng22/export-wechat-emoji"
  version "0.3.0"
  license "MIT"

  on_arm do
    url "https://github.com/liusheng22/export-wechat-emoji/releases/download/v0.3.0/wxemoticon-aarch64-apple-darwin.tar.gz"
    sha256 "d36cbcc546e88f3c112172688efb7845da13cc31761b5a33e2e877628f9cbb4b"
  end

  on_intel do
    url "https://github.com/liusheng22/export-wechat-emoji/releases/download/v0.3.0/wxemoticon-x86_64-apple-darwin.tar.gz"
    sha256 "b3d25142a013340dde8041b72f4ba9eb521801ce1229d08c0a27b3053e69b72d"
  end

  def install
    bin.install "wxemoticon"
  end

  test do
    assert_match "wxemoticon", shell_output("#{bin}/wxemoticon --help")
  end
end
