class GelTools < Formula
  desc "Tools for managing Gel database instances (Docker remote connections)"
  homepage "https://github.com/Tanmay-codeol/homebrew-gel-switcher"
  url "https://github.com/Tanmay-codeol/gel-switcher/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c3372b47ade19ce6ad0550a92d68a8f2576f27ca3b658a85c35a4ca5db45f1c2"
  license "MIT"

  def install
    bin.install "bin/gel-docker"
    bin.install "bin/gel-switch"

    bash_completion.install "completions/gel-docker.bash"
    bash_completion.install "completions/gel-switch.bash"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/gel-docker --help")
    assert_match "Usage:", shell_output("#{bin}/gel-switch --help")
  end
end

