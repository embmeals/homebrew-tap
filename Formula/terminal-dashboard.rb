class TerminalDashboard < Formula
  desc "Terminal-based media server status dashboard with cat animation"
  homepage "https://github.com/embmeals/terminal-dashboard"
  url "https://github.com/embmeals/terminal-dashboard/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0bcad5050e2e1b6730f1d2c37be43abb78d37aa42bb4a7fc980aed8da84c7592"
  license "MIT"

  depends_on :macos

  def install
    bin.install "dashboard.sh" => "terminal-dashboard"
  end

  test do
    assert_match "MEDIA SERVER", shell_output("cat #{bin}/terminal-dashboard")
  end
end
