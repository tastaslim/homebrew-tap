class Mh < Formula
  desc "MergeHarbor from your terminal: review changes before you push"
  homepage "https://mergeharbor.com/docs/cli/"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/tastaslim/mh/releases/download/v0.1.0/mh_v0.1.0_darwin_arm64.tar.gz"
      sha256 "96c7d271e0abee8a247823f30dc74f18637e6c44ddcce76db0dd9c384733c45e"
    end
    on_intel do
      url "https://github.com/tastaslim/mh/releases/download/v0.1.0/mh_v0.1.0_darwin_amd64.tar.gz"
      sha256 "4d78bfe76afd2141faab15430996c064b022bb8cc0817c42e975ce0f61028be3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tastaslim/mh/releases/download/v0.1.0/mh_v0.1.0_linux_arm64.tar.gz"
      sha256 "55f49652de78c52f76b3fa6b6aa83f7e4ebc75e87c1a4ac8fb885b166226888c"
    end
    on_intel do
      url "https://github.com/tastaslim/mh/releases/download/v0.1.0/mh_v0.1.0_linux_amd64.tar.gz"
      sha256 "a4f3ebe478f6d23db170cf502c710e2a1daf8dd5dfc5f1f4fe5889fdfa05dfce"
    end
  end

  def install
    bin.install "mh"
  end

  test do
    assert_match "mh v0.1.0", shell_output("#{bin}/mh version")
  end
end
