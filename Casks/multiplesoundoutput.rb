cask "multiplesoundoutput" do
  version "1.0.1"
  sha256 "09db22f0b0d9cc44247134afe38fed05b74cbd99a1da18bb832e31dc09b7c3f1"

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
