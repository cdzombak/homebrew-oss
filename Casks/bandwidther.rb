cask "bandwidther" do
  version "1.0.0"
  sha256 "c2f4994e2e2f348d00c59e7b0d483023396b30757201e0efdcc2d9aecdfbaf6d"

  url "https://github.com/cdzombak/bandwidther/releases/download/v#{version}/Bandwidther.dmg"
  name "Bandwidther"
  desc "Menu bar app for monitoring application bandwidth use"
  homepage "https://github.com/cdzombak/bandwidther"

  app "Bandwidther.app"
end
