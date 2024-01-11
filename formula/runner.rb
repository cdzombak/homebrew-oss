# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Runner < Formula
  desc "Lightweight wrapper for better cron jobs and containers"
  homepage "https://github.com/cdzombak/runner"
  url "https://github.com/cdzombak/runner/archive/refs/tags/v2.9.1.tar.gz"
  sha256 "68bc9f842d9c5bcb2090b896971eb098aa198f8e15b869a078e184c795d94e6f"
  version "2.9.1"
  license "LGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/cdzombak/runner/releases/download/v2.9.1/runner-2.9.1-darwin-amd64.tar.gz"
      sha256 "f1ee115426893286478bf568e8afa6b299ff02acee8893dc8eb25c8523fa30c3"
    end

    on_arm do
      url "https://github.com/cdzombak/runner/releases/download/v2.9.1/runner-2.9.1-darwin-arm64.tar.gz"
      sha256 "18cf3c9aaa1f79175d48ff844fa522bbecdb3cbc0de554dbcc4919e4ed8408be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdzombak/runner/releases/download/v2.9.1/runner-2.9.1-linux-amd64.tar.gz"
      sha256 "0e21a34a6dbd776c315bb1c3e9770b114f3803eb23682e700d70bf5acc460091"
    end

    on_arm do
      url "https://github.com/cdzombak/runner/releases/download/v2.9.1/runner-2.9.1-linux-arm64.tar.gz"
      sha256 "c1990197dc5a9dba4acfe88ab517d4134e8c2e9cd45b4280fe8d70c64beb1f9b"
    end
  end

  def install
    bin.install "runner"
  end

  test do
    assert_match("2.9.1", shell_output("#{bin}/runner -version"))
  end
end
