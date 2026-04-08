cask "qlarchives" do
  version "1.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/relikd/QLArchives/releases/download/v#{version}/QLArchives_#{version}.zip"
  name "QLArchives"
  desc "A simple quicklook plugin for archive formats"
  homepage "https://github.com/relikd/QLArchives"

  depends_on macos: ">= :catalina"

  app "QLArchives.app"

  zap trash: [
    "~/Library/Containers/de.relikd.QLArchives",
  ]
end