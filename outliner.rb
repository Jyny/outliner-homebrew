class Outliner < Formula
  desc "CLI tool for Auto setup and deploy outline VPN"
  homepage "https://github.com/Jyny/outliner"
  url "https://github.com/Jyny/outliner/archive/v0.2.2.tar.gz"
  sha256 "1ffc4f2be4f183fa0094eb622c19f4b4838dcced071a2cfbce0869e2bee253f3"
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
