# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Mqtt2influxdb < Formula
  desc "Opinionated and intentionally scope-limited mqtt to influxdb bridge"
  homepage "https://github.com/cdzombak/mqtt2influxdb"
  url "https://github.com/cdzombak/mqtt2influxdb/archive/refs/tags/v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "af8c4a54401a4ba468345a38d66c76d3d794b0bcac4174be4fd7d03b5cf9c0fb"
  license "LGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/cdzombak/mqtt2influxdb/releases/download/v0.0.3/mqtt2influxdb-0.0.3-darwin-amd64.tar.gz"
      sha256 "ac5e1f2709c2494f3633770084972e5a6cf5d5feb1a5275dda88f53358d97f9e"
    end

    on_arm do
      url "https://github.com/cdzombak/mqtt2influxdb/releases/download/v0.0.3/mqtt2influxdb-0.0.3-darwin-arm64.tar.gz"
      sha256 "7cce8f1a7db63eb8c206d02c5d720625b993c980f549f795fb4337e167abe280"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdzombak/mqtt2influxdb/releases/download/v0.0.3/mqtt2influxdb-0.0.3-linux-amd64.tar.gz"
      sha256 "4d445c3429617223394f64fd13e7a4ec9c9192716f4fd1adcd520cfd8d00e333"
    end

    on_arm do
      url "https://github.com/cdzombak/mqtt2influxdb/releases/download/v0.0.3/mqtt2influxdb-0.0.3-linux-arm64.tar.gz"
      sha256 "7bf9cd4ce22ef23fdbbeb7578ed10cc89be2546ba2d249203393a38e8b918c3c"
    end
  end

  def install
    bin.install "mqtt2influxdb"
  end

  test do
    assert_match("0.0.3", shell_output("#{bin}/mqtt2influxdb -version"))
  end
end
