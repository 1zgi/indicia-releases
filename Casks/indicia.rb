cask "indicia" do
  version "0.1.0"
  sha256 "6d1616ab7a239d371126176ee63611c1ce6103e5a528f60044569f9784dc053d"

  url "https://github.com/1zgi/indicia-releases/releases/download/v#{version}/Indicia-#{version}-macos-arm64.zip"
  name "Indicia"
  desc "Floating AI prompt improver and IELTS writing tutor"
  homepage "https://github.com/1zgi/indicia-releases"

  depends_on macos: ">= :catalina"

  app "Indicia.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Indicia.app"]
  end

  zap trash: [
    "~/Library/LaunchAgents/com.ctrlrings.indicia.plist",
  ]
end
