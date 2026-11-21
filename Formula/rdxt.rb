class Rdxt < Formula
  desc "Markdown, made for Rex: read and write Markdown as real text in your terminal"
  homepage "https://github.com/travelingflwr/rex-doc"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.0/rdxt_0.4.0_darwin_arm64.tar.gz"
      sha256 "125724fcf96f0fb271fd1d26948ae54bf3397ce62787ed29d45260ca923171d0"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.0/rdxt_0.4.0_darwin_amd64.tar.gz"
      sha256 "d2144e7410d7b649a12ef8526b6e83e8a27e7885c628137494466975a942b407"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.0/rdxt_0.4.0_linux_arm64.tar.gz"
      sha256 "ab244f2c31a4e7710d284276e9163f5a6752004739ed7888dfec88ffc6e5f121"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.0/rdxt_0.4.0_linux_amd64.tar.gz"
      sha256 "79c02576cbbea8f1bcf146b2a19d1d49ab33b487ff3e0aa4f2803a8a24216254"
    end
  end

  def install
    bin.install "rdxt"
    bin.install_symlink "rdxt" => "rex-doc"
  end

  def caveats
    <<~EOS
      Make rdxt feel built into Rex (Cmd-click, the palette, agent skills):
        rdxt setup
      ★ Like it? A star helps others find it: https://github.com/travelingflwr/rex-doc
    EOS
  end

  test do
    assert_match "rdxt v0.4.0", shell_output("#{bin}/rdxt --version")
  end
end
