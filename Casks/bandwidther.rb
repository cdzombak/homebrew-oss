cask "bandwidther" do
  version "1.0.1"
  sha256 "dd094bd30dbd787436f575fc0abdb51cb8040528249ff98f8dcd641c50bc86d1"

  url "https://github.com/cdzombak/bandwidther/releases/download/v#{version}/Bandwidther.dmg"
  name "Bandwidther"
  desc "Menu bar app for monitoring application bandwidth use"
  homepage "https://github.com/cdzombak/bandwidther"

  app "Bandwidther.app"
end
