# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Listening < Formula
  desc "List processes listening for network connections"
  homepage "https://github.com/cdzombak/listening"
  url "https://github.com/cdzombak/listening/releases/download/v1.0.2/listening-1.0.2-all.tar.gz"
  sha256 "38d8446fe0feedb0412f00e1ee106b3d8ec8c9e340515b605977e7818e8c67ce"
  license "LGPL-3.0"

  def install
    bin.install "listening"
  end

  test do
    assert_match("1.0.2", shell_output("#{bin}/listening --version"))
  end
end
