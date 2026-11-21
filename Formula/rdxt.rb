class Rdxt < Formula
  desc "Markdown, made for Rex: read and write Markdown as real text in your terminal"
  homepage "https://github.com/travelingflwr/rex-doc"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.1/rdxt_0.4.1_darwin_arm64.tar.gz"
      sha256 "d8a6454b98fe6697084eb0d08b81f6f1254cc6355a9075700cc3bfc40442057d"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.1/rdxt_0.4.1_darwin_amd64.tar.gz"
      sha256 "9bf9873d5f08b2ae475d6d80dfe19ed54f9440d8d7115a1baaf8e98ffab3b86a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.1/rdxt_0.4.1_linux_arm64.tar.gz"
      sha256 "ab34d6cc2fc37e366da43b5cf426e669a0bb1645935b4bacfba8564be982896c"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.1/rdxt_0.4.1_linux_amd64.tar.gz"
      sha256 "5efc84488a3775d70a8107fddae465444575594fdf77a60492775dba395a3246"
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
    assert_match "rdxt v0.4.1", shell_output("#{bin}/rdxt --version")
  end
end
