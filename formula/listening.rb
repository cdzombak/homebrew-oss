# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Listening < Formula
  desc "List processes listening for network connections"
  homepage "https://github.com/cdzombak/listening"
  url "https://github.com/cdzombak/listening/releases/download/v1.0.3/listening-1.0.3-all.tar.gz"
  sha256 "8e528de42fcec0eaafd571dab520fec7d52e7483b7fd9321b24a5af3f2e59abf"
  license "LGPL-3.0"

  def install
    bin.install "listening"
  end

  test do
    assert_match("1.0.3", shell_output("#{bin}/listening --version"))
  end
end
