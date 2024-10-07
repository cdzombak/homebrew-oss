# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class MacosUpsMqttConnector < Formula
  desc "Send current UPS status from your mac to MQTT"
  homepage "https://github.com/cdzombak/macos-ups-mqtt-connector"
  url "https://github.com/cdzombak/macos-ups-mqtt-connector/releases/download/v0.0.2/macos-ups-mqtt-connector-0.0.2-all.tar.gz"
  sha256 "4892212dad50e32b45882d4be32c937ddb31aca4ba3c951ac791e6c2f9f3c668"
  license "LGPL-3.0"

  def install
    bin.install "macos-ups-mqtt-connector"
  end

  test do
    assert_match("0.0.2", shell_output("#{bin}/macos-ups-mqtt-connector -version"))
  end
end
