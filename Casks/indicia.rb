cask "indicia" do
  version "0.1.1"
  sha256 "09b43439c71dfe7759d236fe48b576f9e74c43a4e1e224766cfc851cc097b2d3"

  url "https://github.com/1zgi/indicia-releases/releases/download/v#{version}/Indicia-#{version}-macos-arm64.zip"
  name "Indicia"
  desc "Floating AI prompt improver and IELTS writing tutor"
  homepage "https://github.com/1zgi/indicia-releases"

  depends_on macos: ">= :catalina"

  app "Indicia.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Indicia.app"]
    system_command "/usr/bin/xattr", args: ["-d", "com.apple.provenance", "#{appdir}/Indicia.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/LaunchAgents/com.ctrlrings.indicia.plist",
  ]
end
