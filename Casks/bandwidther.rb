cask "bandwidther" do
  version "0.0.2"
  sha256 "ea4b1d8534ab3d355a629b4c3faff733cf991f3cafa9640113d453e75e4492ff"

  url "https://github.com/cdzombak/bandwidther/releases/download/v#{version}/Bandwidther.dmg"
  name "Bandwidther"
  desc "Menu bar app for monitoring application bandwidth use"
  homepage "https://github.com/cdzombak/bandwidther"

  app "Bandwidther.app"
end
