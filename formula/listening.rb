# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Listening < Formula
  desc "List processes listening for network connections."
  homepage "https://github.com/cdzombak/listening"
  url "https://github.com/cdzombak/listening/releases/download/v1.0.1/listening-1.0.1-all.tar.gz"
  sha256 "e8a7441e978a8e482b42163048ef88eddf98870c805c7ed9edc21776ce7e6ace  ./gh-release/listening-1.0.1-all.tar.gz"
  license "LGPL-3.0"

  def install
    bin.install "listening"
  end

  test do
    assert_match("1.0.1", shell_output("#{bin}/listening --version"))
  end
end
