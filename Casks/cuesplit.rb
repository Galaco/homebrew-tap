# Generated from Distribution/homebrew-tap/Casks/cuesplit.rb in the CueSplit repository on each release; edit it there.
cask "cuesplit" do
  version "1.0.0"
  sha256 "e5e1427f23def6550a3b760dc072159a5ff491e00c015b1450f3c7479360c562"

  url "https://github.com/Galaco/cuesplit-app/releases/download/v#{version}/CueSplit-#{version}.dmg"
  name "CueSplit"
  desc "Split cue sheet images into tagged FLAC, Apple Lossless or AAC tracks"
  homepage "https://github.com/Galaco/cuesplit-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "CueSplit.app"

  zap trash: [
    "~/Library/Application Scripts/me.galaco.cuesplit",
    "~/Library/Containers/me.galaco.cuesplit",
  ]
end
