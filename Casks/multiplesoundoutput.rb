cask "multiplesoundoutput" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/gmaendel/MultipleSoundOutput/releases/download/v#{version}/MultipleSoundOutput-#{version}.zip"
  name "MultipleSoundOutput"
  desc "Plays sound through several displays at once, with working volume keys"
  homepage "https://github.com/gmaendel/MultipleSoundOutput"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MultipleSoundOutput.app"

  uninstall quit: "com.gmaendel.MultipleSoundOutput"

  zap trash: "~/Library/Preferences/com.gmaendel.MultipleSoundOutput.plist"
end
