class Rdxt < Formula
  desc "Markdown, made for Rex: read and write Markdown as real text in your terminal"
  homepage "https://github.com/travelingflwr/rex-doc"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.2.0/rdxt_0.2.0_darwin_arm64.tar.gz"
      sha256 "438560fe5bff9818908a824264c47b240fb33da732bb8d091cad219e636e634d"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.2.0/rdxt_0.2.0_darwin_amd64.tar.gz"
      sha256 "7b41074b71e88751d868db3d19012eeed2b0e8c838d6834ae9c0bdd59f48ac14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.2.0/rdxt_0.2.0_linux_arm64.tar.gz"
      sha256 "eae75ee8a458b4915ac1c1559f3a4cb65cf7aba470be82adc8fe7c4d4a3e18d3"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.2.0/rdxt_0.2.0_linux_amd64.tar.gz"
      sha256 "e5df5f02a6194da350f701d911e6a64257184af331a659595ff5591b497d7154"
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
    assert_match "rdxt v0.2.0", shell_output("#{bin}/rdxt --version")
  end
end
