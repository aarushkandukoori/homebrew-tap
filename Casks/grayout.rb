cask "grayout" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "d935393c32f7834b41e21d7d1bfd7c92d5d57c01e8f50eefcb2f0d9b1b4b2c33",
         intel: "b6b60fc472ba176271c633feb311e41bd88850ffbec1f57c924988da99dc93be"

  url "https://github.com/aarushkandukoori/grayout/releases/download/v#{version}/Grayout-#{arch}.dmg"
  name "Grayout"
  desc "Turns the screen gray when an AI judges you clearly off task"
  homepage "https://aarushkandukoori.github.io/grayout/"

  # The app is ad-hoc signed, not notarized, so Gatekeeper asks once on the
  # first launch. See the caveats below.
  depends_on macos: :ventura

  app "Grayout.app"

  uninstall quit: "com.aarushkandukoori.grayout"

  zap trash: [
    "~/Library/Application Support/Grayout",
    "~/Library/LaunchAgents/com.aarushkandukoori.grayout.plist",
  ]

  caveats <<~EOS
    Grayout runs on your own Anthropic or OpenAI API key and needs Screen
    Recording permission. Its welcome window walks through both.

    It is not notarized yet. On the first launch macOS will say it cannot
    verify the app: click Done, then open System Settings > Privacy & Security
    and click Open Anyway. To skip that, run

      xattr -dr com.apple.quarantine /Applications/Grayout.app
  EOS
end
