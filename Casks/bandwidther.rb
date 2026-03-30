cask "bandwidther" do
  version "0.0.1"
  sha256 "9f866940d21c03d20d1f57c451fb51b727f21fb30a32ccbe2a4809ae3f30ac80"

  url "https://github.com/cdzombak/bandwidther/releases/download/v#{version}/Bandwidther.dmg"
  name "Bandwidther"
  desc "Menu bar app for monitoring application bandwidth use"
  homepage "https://github.com/cdzombak/bandwidther"

  app "Bandwidther.app"
end
