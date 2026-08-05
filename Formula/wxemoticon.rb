class Wxemoticon < Formula
  desc "macOS 微信表情包工具：抓取 db key / 导出 URL / 导出表情包图片"
  homepage "https://github.com/liusheng22/export-wechat-emoji"
  version "0.2.0"
  license "MIT"

  on_arm do
    url "https://github.com/liusheng22/export-wechat-emoji/releases/download/v0.2.0/wxemoticon-aarch64-apple-darwin.tar.gz"
    sha256 "f1f5d38efd49ebf1c8ef5082a36a329017fd5d41e63bab40d2f3f650c121dbf6"
  end

  on_intel do
    url "https://github.com/liusheng22/export-wechat-emoji/releases/download/v0.2.0/wxemoticon-x86_64-apple-darwin.tar.gz"
    sha256 "d6284284935c09e10cd5b2b96f366ea06f8045fa07eea2822c5141a8d3e7516e"
  end

  def install
    bin.install "wxemoticon"
  end

  test do
    assert_match "wxemoticon", shell_output("#{bin}/wxemoticon --help")
  end
end
