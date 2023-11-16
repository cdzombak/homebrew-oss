# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class EnergybridgeToInfluxdb < Formula
  desc "Pull electricity usage readings from an energy bridge via mqtt and ship them to"
  homepage "https://github.com/cdzombak/energybridge_to_influxdb"
  url "https://github.com/cdzombak/energybridge_to_influxdb/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "6b4e11719259805bbb310ad4c378928f7beacc6f50deea64dc066ecc6c3bfa35"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cdzombak/energybridge_to_influxdb/releases/download/v1.0.4/energybridge_to_influxdb-1.0.4-darwin-amd64.tar.gz"
      sha256 "e7658151519c27e60e417d613efdb6aa02061d765e4b729c437a07c4aadecd05"
    end

    on_arm do
      url "https://github.com/cdzombak/energybridge_to_influxdb/releases/download/v1.0.4/energybridge_to_influxdb-1.0.4-darwin-arm64.tar.gz"
      sha256 "5a4d5217ddf156490e9ed49cb2b27a12608a1d5de794ae32ce3793cbfc6e8665"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdzombak/energybridge_to_influxdb/releases/download/v1.0.4/energybridge_to_influxdb-1.0.4-linux-amd64.tar.gz"
      sha256 "621d74d3c2331351bc4ce1c147b888a8de27c4db5de011e7046e6758ff0c8ad7"
    end

    on_arm do
      url "https://github.com/cdzombak/energybridge_to_influxdb/releases/download/v1.0.4/energybridge_to_influxdb-1.0.4-linux-arm64.tar.gz"
      sha256 "8567536d8b20c428ee90e459db7d1f53dd33af2d7e08eb9bfd30fa5138e8555f"
    end
  end

  def install
    bin.install "energybridge_to_influxdb"
  end

  test do
    assert_match("1.0.4", shell_output("#{bin}/energybridge_to_influxdb -version"))
  end
end
