class Rdxt < Formula
  desc "Markdown, made for Rex: read and write Markdown as real text in your terminal"
  homepage "https://github.com/travelingflwr/rex-doc"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.2/rdxt_0.4.2_darwin_arm64.tar.gz"
      sha256 "ec99a7900e3424879853b759a2c711a589afbd009d03038e4c1cb280ddf84c0a"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.2/rdxt_0.4.2_darwin_amd64.tar.gz"
      sha256 "1ea60c1b6228703087bf5ffc809fcffc0b173198bb7650d2ec9d8682a8b3ecee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.2/rdxt_0.4.2_linux_arm64.tar.gz"
      sha256 "0ef829b20fda837b57c1f9de88e0e10fd4a0dba7cb2e4fdb6634c09936e92426"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.4.2/rdxt_0.4.2_linux_amd64.tar.gz"
      sha256 "e88e62c9bfb1e1f4b56d2a3c366e2706033389fbdcd6a517824b37e93221a64a"
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
    assert_match "rdxt v0.4.2", shell_output("#{bin}/rdxt --version")
  end
end
