class Wxemoticon < Formula
  desc "macOS 微信表情包工具：抓取 db key / 导出 URL / 导出表情包图片"
  homepage "https://github.com/liusheng22/export-wechat-emoji"
  version "0.1.4"
  license "MIT"

  on_arm do
    url "https://github.com/liusheng22/export-wechat-emoji/releases/download/v0.1.4/wxemoticon-aarch64-apple-darwin.tar.gz"
    sha256 "6658251095a7bb3b9a8cbd95987ff25ee87343377929671f42740333df8e29fd"
  end

  on_intel do
    url "https://github.com/liusheng22/export-wechat-emoji/releases/download/v0.1.4/wxemoticon-x86_64-apple-darwin.tar.gz"
    sha256 "52621e7a67cea40257b5f363d58779af308d9f67c04d08242f08d294c997f20d"
  end

  def install
    bin.install "wxemoticon"
  end

  test do
    assert_match "wxemoticon", shell_output("#{bin}/wxemoticon --help")
  end
end
