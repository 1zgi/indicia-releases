cask "indicia" do
  version "0.1.3"
  sha256 "d6881c86eefb09863a66826e891f811896ac563e8899f69b5c9d53af23ac4ee8"

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
