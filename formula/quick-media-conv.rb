# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class QuickMediaConv < Formula
  desc "Scripts for quick ffmpeg/imagemagick conversions"
  homepage "https://github.com/cdzombak/quick-media-conv"
  url "https://github.com/cdzombak/quick-media-conv/releases/download/v1.0.2/quick-media-conv-1.0.2-all.tar.gz"
  sha256 "799aa426f8ec9466d64e6a2d2d3d3f041abda21b850d8b1d211584b71d2348c7"
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
    assert_match("1.0.2", shell_output("#{bin}/flv2mp4 --version"))
    assert_match("1.0.2", shell_output("#{bin}/toalac --version"))
    assert_match("1.0.2", shell_output("#{bin}/tom4a --version"))
    assert_match("1.0.2", shell_output("#{bin}/tomp4 --version"))
    assert_match("1.0.2", shell_output("#{bin}/tomp4-hq --version"))
    assert_match("1.0.2", shell_output("#{bin}/tomp4-robust --version"))
    assert_match("1.0.2", shell_output("#{bin}/topng --version"))
  end
end
