cask "multiplesoundoutput" do
  version "1.0.0"
  sha256 "91095ff6fddd44357e34782dbd7ecb76f67c7e67102a757fb658aacd4a061a6c"

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
