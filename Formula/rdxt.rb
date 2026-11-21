class Rdxt < Formula
  desc "Markdown, made for Rex: read and write Markdown as real text in your terminal"
  homepage "https://github.com/travelingflwr/rex-doc"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.3.0/rdxt_0.3.0_darwin_arm64.tar.gz"
      sha256 "f018e771590e141fca947e149979d6722c650321080bd5e1f63ce389ce4230be"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.3.0/rdxt_0.3.0_darwin_amd64.tar.gz"
      sha256 "9fd2e663026f963725f91180fb49e017ddc801d1371a156af36bf6e707b731fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.3.0/rdxt_0.3.0_linux_arm64.tar.gz"
      sha256 "ed82f607e88be38373f71779ab2f911b286d5c344bee7282f9bb1c165d87c7eb"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.3.0/rdxt_0.3.0_linux_amd64.tar.gz"
      sha256 "e98c90827bc2c8dd30aae4011b572a55f885721faf1d4da47f1201d42ae89d5b"
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
    assert_match "rdxt v0.3.0", shell_output("#{bin}/rdxt --version")
  end
end
