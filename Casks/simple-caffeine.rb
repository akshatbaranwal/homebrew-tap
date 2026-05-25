cask "simple-caffeine" do
  version "0.1.0"
  sha256 "d45bb46ca2f2259eed687d5f57024827e464b23cbabaa23082ba27ed40bb524b"

  url "https://github.com/akshatbaranwal/simple-caffeine/releases/download/v#{version}/SimpleCaffeine-#{version}.zip"
  name "Simple Caffeine"
  desc "Menu bar app to keep your Mac awake"
  homepage "https://github.com/akshatbaranwal/simple-caffeine"

  depends_on macos: ">= :ventura"

  app "SimpleCaffeine.app"

  zap trash: [
    "~/Library/Preferences/io.github.akshatbaranwal.simple-caffeine.plist",
  ]
end
