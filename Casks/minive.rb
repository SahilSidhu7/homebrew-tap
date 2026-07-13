# Homebrew cask for miniVE.
# Lives in the tap repo: github.com/SahilSidhu7/homebrew-tap as Casks/minive.rb
# After each release: bump `version`, replace both sha256 values
# (shasum -a 256 <file>, or copy from the release's *.sig-adjacent checksums).
cask "minive" do
  version "0.2.0"

  arch arm: "aarch64", intel: "x64"
  sha256 arm:   "283a559f938275cc96f907fb419df3794dcff84fb9c067ee7efc32255a96675a",
         intel: "4ed8c26e14d4fd3684d25fec390d74d28671e1e70a43190792e2a6a1239d1894"

  url "https://github.com/SahilSidhu7/miniVE/releases/download/v#{version}/miniVE_#{version}_#{arch}.dmg"
  name "miniVE"
  desc "Disposable Docker-backed dev environments"
  homepage "https://github.com/SahilSidhu7/miniVE"

  depends_on cask: "docker-desktop"

  app "miniVE.app"

  zap trash: [
    "~/Library/Application Support/com.sahil.minive",
    "~/Library/Caches/com.sahil.minive",
    "~/Library/WebKit/com.sahil.minive",
  ]
end
