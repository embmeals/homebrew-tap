class TerminalDashboard < Formula
  desc "Terminal-based media server status dashboard with cat animation"
  homepage "https://github.com/embmeals/terminal-dashboard"
  url "https://github.com/embmeals/terminal-dashboard/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e94f633cebe388547850e28a55d87a401c32492d5d8a5e6b86eb3f5ba70da791"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lib/dashboard.sh" => "terminal-dashboard"
  end

  test do
    assert_match "MEDIA SERVER", shell_output("cat #{bin}/terminal-dashboard")
  end
end
