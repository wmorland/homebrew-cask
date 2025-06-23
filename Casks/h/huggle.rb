# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "huggle" do
  arch arm: "arm", intel: "intel"

  version "3.4.13"
  sha256 "f3616372fefb0cae1622bba980478f47c6c966181d0c66f0686da36b8ee45a31"

  url "https://github.com/huggle/huggle3-qt-lx/releases/download/#{version}/huggle_#{version}_#{arch}.dmg"
    verified: "github.com/huggle/huggle3-qt-lx/"
  name "Huggle"
  desc "An anti-vandalism tool for use on MediaWiki based projects"
  homepage "https://en.wikipedia.org/wiki/Wikipedia:Huggle"

 livecheck do
    url :url
    strategy :github_latest
  end

  app "Huggle.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
