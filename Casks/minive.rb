# Homebrew cask for miniVE.
# Lives in the tap repo: github.com/SahilSidhu7/homebrew-tap as Casks/minive.rb
# After each release: bump `version`, replace both sha256 values
# (shasum -a 256 <file>, or copy from the release's *.sig-adjacent checksums).
cask "minive" do
  version "0.3.0"

  arch arm: "aarch64", intel: "x64"
  sha256 arm:   "46fdd0fdb3a1d348970fc2ed9177e78a92d58ce386e647ff8b2cbe70ca86f9d4",
         intel: "352fc21da6fdc30b1fb635db8d3b8b01a20b84e0ab09b8ee0e18a07cdececdfc"

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
