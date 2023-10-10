# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class WindowStack2 < Formula
  desc "Keep a log of frontmost macOS window titles in your terminal"
  homepage "https://github.com/cdzombak/windowstack2"
  url "https://github.com/cdzombak/windowstack2/releases/download/v1.6.1/windowstack2-1.6.1-all.tar.gz"
  sha256 "8f0a738511a7e1322fdfe180034d1b2976e9356101f5484c5b8f2a790be690d8"
  license "MIT"

  def install
    bin.install "windowstack2"
  end

  test do
    assert_match("1.6.1", shell_output("#{bin}/windowstack2 --version"))
  end
end
