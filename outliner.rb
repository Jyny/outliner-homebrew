class Outliner < Formula
  desc "CLI tool for Auto setup and deploy outline VPN"
  homepage "https://github.com/Jyny/outliner"
  url "https://github.com/Jyny/outliner/archive/v0.2.0.tar.gz"
  sha256 "e1eb2c2e1a4a9f9abdb8e034bbb72a6f232cf2dd77105f13a1a1860211af7fce"
  head "https://github.com/Jyny/outliner.git"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "outliner"
  end

  test do
    assert_match "outliner", shell_output("#{bin}/outliner")
  end
end
