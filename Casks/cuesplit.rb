# Generated from CLI/cuesplit.rb in the CueSplit repository on each release; edit it there.
cask "cuesplit" do
  version "0.1.0"
  sha256 "5e9085065fdd1d401b0e15471d8d40e9474275407cb9befd650008bb79b180ec"

  url "https://github.com/Galaco/cuesplit-cli/releases/download/v#{version}/cuesplit-#{version}-macos.zip"
  name "cuesplit"
  desc "Split cue sheet images into tagged FLAC, Apple Lossless or AAC tracks"
  homepage "https://github.com/Galaco/cuesplit-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  binary "cuesplit"
  manpage "cuesplit.1"
  bash_completion "cuesplit.bash"
  zsh_completion "_cuesplit"
  fish_completion "cuesplit.fish"

  # No zap stanza: cuesplit keeps no settings or caches.
end
