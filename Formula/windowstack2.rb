# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Windowstack2 < Formula
  desc "Keep a log of frontmost macOS window titles in your terminal"
  homepage "https://github.com/cdzombak/windowstack2"
  url "https://github.com/cdzombak/windowstack2/releases/download/v1.6.2/windowstack2-1.6.2-all.tar.gz"
  sha256 "594767395296cda88fcf80429c8cf9c25a14da28e5ce4a8f3916fe520b3b6667"
  license "MIT"

  def install
    bin.install "windowstack2"
  end

  test do
    assert_match("1.6.2", shell_output("#{bin}/windowstack2 --version"))
  end
end
