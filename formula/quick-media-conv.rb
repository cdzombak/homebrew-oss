# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class QuickMediaConv < Formula
  desc "Scripts for quick ffmpeg/imagemagick conversions"
  homepage "https://github.com/cdzombak/quick-media-conv"
  url "https://github.com/cdzombak/quick-media-conv/releases/download/v1.0.1/quick-media-conv-1.0.1-all.tar.gz"
  sha256 "7e47bd668958168754f2e64521f0aea43cba283dc977689088212fe7944f57ce"
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
    assert_match("1.0.1", shell_output("#{bin}/flv2mp4 --version"))
    assert_match("1.0.1", shell_output("#{bin}/toalac --version"))
    assert_match("1.0.1", shell_output("#{bin}/tom4a --version"))
    assert_match("1.0.1", shell_output("#{bin}/tomp4 --version"))
    assert_match("1.0.1", shell_output("#{bin}/tomp4-hq --version"))
    assert_match("1.0.1", shell_output("#{bin}/tomp4-robust --version"))
    assert_match("1.0.1", shell_output("#{bin}/topng --version"))
  end
end
