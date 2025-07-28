class GelTools < Formula
  desc "Tools for managing Gel database instances (Docker remote connections)"
  homepage "https://github.com/your-username/gel-tools"
  url "https://github.com/your-username/gel-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "your-sha256-hash-here"
  license "MIT"

  depends_on "gel" 

  def install
    bin.install "gel-docker"
    bin.install "gel-switch"
    
    # Install bash completion if available
    if File.exist?("completions/gel-docker.bash")
      bash_completion.install "completions/gel-docker.bash"
    end
    if File.exist?("completions/gel-switch.bash")
      bash_completion.install "completions/gel-switch.bash"
    end
  end

  test do
    # Test that the scripts are installed and executable
    assert_match "Usage:", shell_output("#{bin}/gel-docker --help")
    assert_match "Usage:", shell_output("#{bin}/gel-switch --help")
  end
end
