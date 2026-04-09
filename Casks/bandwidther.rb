cask "bandwidther" do
  version "0.0.4"
  sha256 "f9b7b0803ed7563de6687f918dbc0229541636775d0a686281eae772848a5135"

  url "https://github.com/cdzombak/bandwidther/releases/download/v#{version}/Bandwidther.dmg"
  name "Bandwidther"
  desc "Menu bar app for monitoring application bandwidth use"
  homepage "https://github.com/cdzombak/bandwidther"

  app "Bandwidther.app"
end
