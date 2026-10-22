class Mh < Formula
  desc "MergeHarbor from your terminal: review changes before you push"
  homepage "https://mergeharbor.com/docs/cli/"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/mergeharbor/mh/releases/download/v0.1.1/mh_v0.1.1_darwin_arm64.tar.gz"
      sha256 "d0a5c0cde0f6d82650ea8f9c26c8162c2d828400be3159892ad6c16b92ab6083"
    end
    on_intel do
      url "https://github.com/mergeharbor/mh/releases/download/v0.1.1/mh_v0.1.1_darwin_amd64.tar.gz"
      sha256 "0bab84049a30cc3ddb3f0e648f95c5e284739e0f387668aecd78d915df85c3f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mergeharbor/mh/releases/download/v0.1.1/mh_v0.1.1_linux_arm64.tar.gz"
      sha256 "eb1dad224ee19f873698701b46b33ec55e59d4fbbd61bc2b0a9714b127f3d0a7"
    end
    on_intel do
      url "https://github.com/mergeharbor/mh/releases/download/v0.1.1/mh_v0.1.1_linux_amd64.tar.gz"
      sha256 "5768ebb26c627f60ab46d4b4835b3d48166e0793e14c1113ced0b362ab8b7649"
    end
  end

  def install
    bin.install "mh"
  end

  test do
    assert_match "mh v0.1.1", shell_output("#{bin}/mh version")
  end
end
