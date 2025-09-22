# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Cidrtool < Formula
  desc "Simple command-line tool for manipulating CIDR blocks"
  homepage "https://github.com/cdzombak/cidrtool"
  url "https://github.com/cdzombak/cidrtool/releases/download/v1.0.2/cidrtool-1.0.2-all.tar.gz"
  sha256 "72a3a82d0ecf7e0a823be9043e85896e5cee0cdae536398b1ea9a667a4e867f3"
  license "LGPL-3.0"

  def install
    bin.install "cidrtool"
  end

  test do
    assert_match("1.0.2", shell_output("#{bin}/cidrtool --version"))
  end
end
