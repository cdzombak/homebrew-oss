# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class MacosUpsMqttConnector < Formula
  desc "Send current UPS status from your mac to MQTT"
  homepage "https://github.com/cdzombak/macos-ups-mqtt-connector"
  url "https://github.com/cdzombak/macos-ups-mqtt-connector/releases/download/v0.0.3/macos-ups-mqtt-connector-0.0.3-all.tar.gz"
  sha256 "5bf0d43ce1092927e0c556e89b459bc0bb466d8fab364b33db54e6ed1220b22b"
  license "LGPL-3.0"

  def install
    bin.install "macos-ups-mqtt-connector"
  end

  test do
    assert_match("0.0.3", shell_output("#{bin}/macos-ups-mqtt-connector -version"))
  end
end
