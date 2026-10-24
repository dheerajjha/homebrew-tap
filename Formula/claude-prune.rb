class ClaudePrune < Formula
  desc "Stop stale Claude Code processes and delete old builds"
  homepage "https://github.com/dheerajjha/claude-prune"
  url "https://github.com/dheerajjha/claude-prune/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c0684615de1a8a01be90b36ef57421f0d08dbd20e18002c4114d5292856880cd"
  license "MIT"

  uses_from_macos "python"

  def install
    bin.install "claude_prune.py" => "claude-prune"
  end

  test do
    assert_match "claude-prune #{version}", shell_output("#{bin}/claude-prune --version")
  end
end
