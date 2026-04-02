cask "bandwidther" do
  version "0.0.3"
  sha256 "e427d6ea65e5ebbf816f2778da385bfd5cc5a6667ef12b83b5d4468e6916ab1f"

  url "https://github.com/cdzombak/bandwidther/releases/download/v#{version}/Bandwidther.dmg"
  name "Bandwidther"
  desc "Menu bar app for monitoring application bandwidth use"
  homepage "https://github.com/cdzombak/bandwidther"

  app "Bandwidther.app"
end
