# github_repo: "relikd/QLArchives"
cask "qlarchives" do
  version "1.1.1"
  sha256 "7710fb57c07d4aac2382be141fb27263692f6d6bf3857d26f4c2f922ecea3649"

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