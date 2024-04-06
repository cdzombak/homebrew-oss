# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Cidrtool < Formula
  desc "A simple command line tool to manipulate CIDR blocks"
  homepage "https://github.com/cdzombak/cidrtool"
  url "https://github.com/cdzombak/cidrtool/releases/download/v1.0.0/cidrtool-1.0.0-all.tar.gz"
  sha256 "a87ffc90df7130f85802c1514d3e794482a50fa31e205f728596658a98917016"
  license "LGPL-3.0"

  def install
    bin.install "cidrtool"
  end

  test do
    assert_match("1.0.0", shell_output("#{bin}/cidrtool --version"))
  end
end
