# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dirshard < Formula
  desc "Produce sharded path fragments from a filename"
  homepage "https://github.com/cdzombak/dirshard"
  url "https://github.com/cdzombak/dirshard/archive/v1.1.6.tar.gz"
  sha256 "f5db5f003930418399bff006c9273d1c52db8f66ac174a3ecc65f0a5f9af9a5f"

  on_macos do
    on_intel do
      url "https://github.com/cdzombak/dirshard/releases/download/v1.1.6/dirshard-1.1.6-darwin-amd64.tar.gz"
      sha256 "7c4d63540f6d19ad5708197fd4a1ccb06b9b608b1d3df1c7efffb2163868428d"
    end

    on_arm do
      url "https://github.com/cdzombak/dirshard/releases/download/v1.1.6/dirshard-1.1.6-darwin-arm64.tar.gz"
      sha256 "b13114188dc7b2bbdbd87da41f43dfbe5314b7260d664f70e9c582afe22557b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdzombak/dirshard/releases/download/v1.1.6/dirshard-1.1.6-linux-amd64.tar.gz"
      sha256 "2c1f9ef146b50ebd9a76f0d13a4b4d8c0df16945a15c8add7befc83da553084f"
    end

    on_arm do
      url "https://github.com/cdzombak/dirshard/releases/download/v1.1.6/dirshard-1.1.6-linux-arm64.tar.gz"
      sha256 "f423cedbc39801eb59869c90ed7cbb9ad576a15a808de96b3bd98dc4a996d411"
    end
  end

  def install
    bin.install "dirshard"
  end

  test do
    assert_match("1.1.6", shell_output("dirshard -version"))
  end
end
