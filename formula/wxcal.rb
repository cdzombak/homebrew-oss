# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Wxcal < Formula
  desc "Generate an ical feed from the weathergov forecast api"
  homepage "https://github.com/cdzombak/wxcal"
  url "https://github.com/cdzombak/wxcal/archive/refs/tags/v1.2.1.tar.gz"
  version "1.2.1"
  sha256 "25518fd7e2aa10bbe7c74ee0ddab96c235ecf2e7df84a10491ce43d96634226f"
  license "LGPL-2.1"

  on_macos do
    on_intel do
      url "https://github.com/cdzombak/wxcal/releases/download/v1.2.1/wxcal-1.2.1-darwin-amd64.tar.gz"
      sha256 "4d864d8f36d6b5bce2903811ee072e62675354f32a14655b8aa0f2d5034ae6fb"
    end

    on_arm do
      url "https://github.com/cdzombak/wxcal/releases/download/v1.2.1/wxcal-1.2.1-darwin-arm64.tar.gz"
      sha256 "90e1db00881baa1aa39a81b2d4d1a044f287588460ab61f84e51c834cf9b542e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdzombak/wxcal/releases/download/v1.2.1/wxcal-1.2.1-linux-amd64.tar.gz"
      sha256 "4e2da810c4cd7131a8987d365b39ccb79a7cdd79005eb845e1554cba154beb7c"
    end

    on_arm do
      url "https://github.com/cdzombak/wxcal/releases/download/v1.2.1/wxcal-1.2.1-linux-arm64.tar.gz"
      sha256 "b9c74786a481cb6984e87b820c995166e5b7c8ef3f119afdc17dcc97556dcb2b"
    end
  end

  def install
    bin.install "wxcal"
  end

  test do
    assert_match("1.2.1", shell_output("#{bin}/wxcal -version"))
  end
end
