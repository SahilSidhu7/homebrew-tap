# Homebrew cask for miniVE.
# Lives in the tap repo: github.com/SahilSidhu7/homebrew-tap as Casks/minive.rb
# After each release: bump `version`, replace both sha256 values
# (shasum -a 256 <file>, or copy from the release's *.sig-adjacent checksums).
cask "minive" do
  version "0.1.0"

  arch arm: "aarch64", intel: "x64"
  sha256 arm:   "453d1241dd95e7f9983cec62def6c4c00e8e6c07b7db0d96718b5b2cc015d9c9",
         intel: "a42c806aa90c7d1952d76d680a508866dd504c3f80691ac1dc7b718dcef9d75c"

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
