# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class QuickMediaConv < Formula
  desc "Scripts for quick ffmpeg/imagemagick conversions"
  homepage "https://github.com/cdzombak/quick-media-conv"
  url "https://github.com/cdzombak/quick-media-conv/releases/download/v1.0.4/quick-media-conv-1.0.4-all.tar.gz"
  sha256 "033306f8a4269fc336f03ece5f17939eae0d4f9a4d59cc23c83c3c2d3e672a7c"
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
    assert_match("1.0.4", shell_output("#{bin}/flv2mp4 --version"))
    assert_match("1.0.4", shell_output("#{bin}/toalac --version"))
    assert_match("1.0.4", shell_output("#{bin}/tom4a --version"))
    assert_match("1.0.4", shell_output("#{bin}/tomp4 --version"))
    assert_match("1.0.4", shell_output("#{bin}/tomp4-hq --version"))
    assert_match("1.0.4", shell_output("#{bin}/tomp4-robust --version"))
    assert_match("1.0.4", shell_output("#{bin}/topng --version"))
  end
end
