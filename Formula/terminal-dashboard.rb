class TerminalDashboard < Formula
  desc "Terminal-based media server status dashboard with cat animation"
  homepage "https://github.com/embmeals/terminal-dashboard"
  url "https://github.com/embmeals/terminal-dashboard/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "77c8efe16dea4e9d0b8d0e380acc7e94515f8c8f2b68de1f609bcec72bf38268"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lib/dashboard.sh" => "terminal-dashboard"
  end

  test do
    assert_match "MEDIA SERVER", shell_output("cat #{bin}/terminal-dashboard")
  end
end
