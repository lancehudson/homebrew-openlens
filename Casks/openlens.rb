cask "openlens" do
  arch arm: "-arm64"

  version "6.1.14"

  if Hardware::CPU.intel?
    sha256 "840bbf00210b81b3290bd6999faf01a4cb09b27802d0aa5a30ccbbcd7735c6f6"
  else
    sha256 "494b361504e75b1aca4ca30093da5229737f7c5a1edd6b3a023d311ae3e4ddd8"
  end

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
    "~/Library/Caches/com.electron.kontena-lens",
    "~/Library/Preferences/com.electron.open-lens.plist",
    "~/Library/Saved Application State/com.electron.open-lens.savedState",
  ]
end
