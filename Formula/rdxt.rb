class Rdxt < Formula
  desc "Markdown, made for Rex: read and write Markdown as real text in your terminal"
  homepage "https://github.com/travelingflwr/rex-doc"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.3/rdxt_0.4.3_darwin_arm64.tar.gz"
      sha256 "5d452b0e9aac4f28411853e576ed754032283b548dff255278f574b59681c242"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.3/rdxt_0.4.3_darwin_amd64.tar.gz"
      sha256 "b626a6fb51854310fe049bc8535b0144dc152877936ffe6793a60608637e34b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.3/rdxt_0.4.3_linux_arm64.tar.gz"
      sha256 "821e181d43a0a92fbf4da6bf745e03bd9ccaf469845158d81e1141019ca39be0"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.3/rdxt_0.4.3_linux_amd64.tar.gz"
      sha256 "beca290c74700fc8f132fa011f8e46984c1642a42a602d9f0b10b269634c67ef"
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
    assert_match "rdxt v0.4.3", shell_output("#{bin}/rdxt --version")
  end
end
