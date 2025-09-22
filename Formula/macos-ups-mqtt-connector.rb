# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class MacosUpsMqttConnector < Formula
  desc "Send current UPS status from your mac to MQTT"
  homepage "https://github.com/cdzombak/macos-ups-mqtt-connector"
  url "https://github.com/cdzombak/macos-ups-mqtt-connector/releases/download/v0.0.4/macos-ups-mqtt-connector-0.0.4-all.tar.gz"
  sha256 "22f66fc13af896cf34bc82349b7cbd5cac63447d531fc7f46861f6b48ea50142"
  license "LGPL-3.0"

  def install
    bin.install "macos-ups-mqtt-connector"
  end

  test do
    assert_match("0.0.4", shell_output("#{bin}/macos-ups-mqtt-connector -version"))
  end
end
