cask "indicia" do
  version "0.1.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/1zgi/indicia-releases/releases/download/v#{version}/Indicia-#{version}-macos-arm64.zip"
  name "Indicia"
  desc "Floating AI prompt improver and IELTS writing tutor"
  homepage "https://github.com/1zgi/indicia-releases"

  app "Indicia.app"

  zap trash: [
    "~/Library/LaunchAgents/com.ctrlrings.indicia.plist",
  ]
end
