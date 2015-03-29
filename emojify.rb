require "formula"

class Emojify < Formula

  url      "https://github.com/brandonweiss/emojify/archive/v0.1.0.tar.gz"
  homepage "https://github.com/brandonweiss/emojify"
  sha256   "9f462615af6a3797923457dd050a7a451c0b1218f7fecca297fadef5a22197c7"

  def install
    bin.install Dir["bin/*"]
  end

end
