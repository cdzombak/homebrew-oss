# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class QuickMediaConv < Formula
  desc "Scripts for quick ffmpeg/imagemagick conversions"
  homepage "https://github.com/cdzombak/quick-media-conv"
  url "https://github.com/cdzombak/quick-media-conv/releases/download/v1.0.3/quick-media-conv-1.0.3-all.tar.gz"
  sha256 "5830136248d33e2cdadd564da96446034da918a184d375f6157ca7edd7313b74"
  license "LGPL-3.0"

  def install
    bin.install "flv2mp4"
    bin.install "toalac"
    bin.install "tom4a"
    bin.install "tomp4"
    bin.install "tomp4-hq"
    bin.install "tomp4-robust"
    bin.install "topng"
  end

  test do
    assert_match("1.0.3", shell_output("#{bin}/flv2mp4 --version"))
    assert_match("1.0.3", shell_output("#{bin}/toalac --version"))
    assert_match("1.0.3", shell_output("#{bin}/tom4a --version"))
    assert_match("1.0.3", shell_output("#{bin}/tomp4 --version"))
    assert_match("1.0.3", shell_output("#{bin}/tomp4-hq --version"))
    assert_match("1.0.3", shell_output("#{bin}/tomp4-robust --version"))
    assert_match("1.0.3", shell_output("#{bin}/topng --version"))
  end
end
