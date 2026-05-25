cask "simple-caffeine" do
  version "0.1.0"
  sha256 "35332ec6be9ad5a8a5efc8a84bbf8e54951a3dcbc954faf4f1d1760d873aab0e"

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
