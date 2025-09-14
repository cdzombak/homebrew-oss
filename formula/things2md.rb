# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Things2md < Formula
  desc "Export Things 3 projects to Markdown"
  homepage "https://github.com/cdzombak/things2md"
  url "https://github.com/cdzombak/things2md/releases/download/v0.0.1/things2md-0.0.1-all.tar.gz"
  sha256 "5bc266cc2ac290cb0b4f5eace616a5b48de790f96452bd4aec3e13144892db34"
  license "LGPL-3.0"

  def install
    bin.install "things2md"
  end

  test do
    assert_match("0.0.1", shell_output("#{bin}/things2md --version"))
  end
end
