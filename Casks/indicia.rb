cask "indicia" do
  version "0.1.2"
  sha256 "b2d7a42b4b8ac3c04b87b997cba56c90e801dd40d4d921685bd08378f962dd9f"

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
