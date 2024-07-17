# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Pdate < Formula
  desc "Date/time parsing on the cli"
  homepage "https://github.com/cdzombak/pdate"
  url "https://github.com/cdzombak/pdate/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "7c6f6fecc6166e1808b2b6c01f532a690de3c88222bc6430ff54799ca22216ee"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cdzombak/pdate/releases/download/v1.1.0/pdate-1.1.0-darwin-amd64.tar.gz"
      sha256 "7cbfb1cf88da3002fe6702b0db87810dd50d8a684c70e8f777f961084e0bcc28"
    end

    on_arm do
      url "https://github.com/cdzombak/pdate/releases/download/v1.1.0/pdate-1.1.0-darwin-arm64.tar.gz"
      sha256 "5cf8a5d09209bae2b8ec7c94ddb4028e6a21d78f0ee72920a35ebe4eb78c32ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdzombak/pdate/releases/download/v1.1.0/pdate-1.1.0-linux-amd64.tar.gz"
      sha256 "76224c5537233f3387cc308b9cee0c5933927151d239dfc36ca9368add15585b"
    end

    on_arm do
      url "https://github.com/cdzombak/pdate/releases/download/v1.1.0/pdate-1.1.0-linux-arm64.tar.gz"
      sha256 "305e84f626649c9c01f0de78f9fdecfcb7e994d47a9a8ef084a66d29ccf867e9"
    end
  end

  def install
    bin.install "pdate"
  end

  test do
    assert_match("1.1.0", shell_output("#{bin}/pdate -version"))
  end
end