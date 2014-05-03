require "formula"

class CurlWithUserAgentDownloadStrategy < CurlDownloadStrategy

  def _fetch
    curl @url, "-C", downloaded_size, "-o", temporary_path, "-A", user_agent
  end

  def user_agent
    `uname -sp`.chomp
  end

end

class Hk < Formula

  homepage "http://heroku.com"
  url      "https://hk.heroku.com/hk.gz", :using => CurlWithUserAgentDownloadStrategy
  version  "20140502"
  sha1     "4613c4cfae0617f3b5cbef11731783e9efcb095c"

  def install
    bin.install "hk"
  end

end

