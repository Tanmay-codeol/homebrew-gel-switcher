class GelTools < Formula
  desc "Tools for managing Gel database instances (Docker remote connections)"
  homepage "https://github.com/Tanmay-codeol/gel-switcher"
  url "https://github.com/Tanmay-codeol/gel-switcher/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f43a8cddf5a3fef2cb925728f2794f647b442c4b35c71624ef5c4e2712d6e7bb"
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

