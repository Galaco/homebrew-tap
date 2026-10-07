# Generated from Distribution/homebrew-tap/Casks/cuesplit-cli.rb in the CueSplit repository on each release; edit it there.
cask "cuesplit-cli" do
  version "1.0.0"
  sha256 "25640ef66e80003bc5fa40fa3f96b5334cfcadc619ba20b0e16ab21ed1d86567"

  url "https://github.com/Galaco/cuesplit-app/releases/download/v#{version}/cuesplit-#{version}-macos.zip"
  name "cuesplit"
  desc "Command-line tool to split cue sheet images into tagged tracks"
  homepage "https://github.com/Galaco/cuesplit-app"

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
