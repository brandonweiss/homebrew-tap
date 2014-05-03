require "formula"

class GitAliae < Formula

  homepage "https://github.com/ConradIrwin/git-aliae"
  head     "https://github.com/ConradIrwin/git-aliae.git"

  def install
    bin.install Dir["bin/*"]
  end

end
