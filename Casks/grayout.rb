cask "grayout" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "203f163bdd097fa4c28bc25a168e3d6259ac3e421adb2d4c37c710b893eb2ec4",
         intel: "58130ce4ba29d73de760891f66834cb68bf188bf3f58e8b2556f28a7d6516617"

  url "https://github.com/aarushkandukoori/grayout/releases/download/v#{version}/Grayout-#{arch}.dmg"
  name "Grayout"
  desc "Turns the screen gray when an AI judges you clearly off task"
  homepage "https://aarushkandukoori.github.io/grayout/"

  # The app is ad-hoc signed, not notarized, so Gatekeeper still asks once.
  # Install with --no-quarantine to skip that, or use Open Anyway.
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

    It is not notarized yet: if macOS says it cannot verify the app, open
    System Settings > Privacy & Security and click Open Anyway.
  EOS
end
