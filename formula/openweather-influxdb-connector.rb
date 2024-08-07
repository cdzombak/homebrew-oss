# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class OpenweatherInfluxdbConnector < Formula
  desc "Write current weather conditions from openweathermap to influxdb"
  homepage "https://github.com/cdzombak/openweather-influxdb-connector"
  url "https://github.com/cdzombak/openweather-influxdb-connector/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "a19e68b3f8188880987977f4bd6230025de9305d390bea866088f870a5863eff"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cdzombak/openweather-influxdb-connector/releases/download/v1.1.0/openweather-influxdb-connector-1.1.0-darwin-amd64.tar.gz"
      sha256 "602fbc37185078b1cafe823badaa38f1b5ffd5aaf2b6e740e189e34fd4eb71a1"
    end

    on_arm do
      url "https://github.com/cdzombak/openweather-influxdb-connector/releases/download/v1.1.0/openweather-influxdb-connector-1.1.0-darwin-arm64.tar.gz"
      sha256 "0e2dd815e5e0d72bf59a3fc7f81021af7cbff74564ddc98727decf0613e5f6ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdzombak/openweather-influxdb-connector/releases/download/v1.1.0/openweather-influxdb-connector-1.1.0-linux-amd64.tar.gz"
      sha256 "23ba10d150c10976c767bfc0707e7d5db6f72ec114eca27584a2ad989102726f"
    end

    on_arm do
      url "https://github.com/cdzombak/openweather-influxdb-connector/releases/download/v1.1.0/openweather-influxdb-connector-1.1.0-linux-arm64.tar.gz"
      sha256 "d294f25fca1f611960dbf1a67938e916023073b20595d3e3dac41ac490dc70df"
    end
  end

  def install
    bin.install "openweather-influxdb-connector"
  end

  test do
    assert_match("1.1.0", shell_output("#{bin}/openweather-influxdb-connector -version"))
  end
end
