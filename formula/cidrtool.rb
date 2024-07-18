# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Cidrtool < Formula
  desc "Simple command line tool for manipulating CIDR blocks"
  homepage "https://github.com/cdzombak/cidrtool"
  url "https://github.com/cdzombak/cidrtool/releases/download/v1.0.1/cidrtool-1.0.1-all.tar.gz"
  sha256 "3c909f5d88df855f7cc60c02ed1a9a27d561bce7d3b2a05ee6095ef96e9b8dc3"
  license "LGPL-3.0"

  def install
    bin.install "cidrtool"
  end

  test do
    assert_match("1.0.1", shell_output("#{bin}/cidrtool --version"))
  end
end
