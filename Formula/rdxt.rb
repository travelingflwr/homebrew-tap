class Rdxt < Formula
  desc "Markdown, made for Rex: read and write Markdown as real text in your terminal"
  homepage "https://github.com/travelingflwr/rex-doc"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.1.0/rdxt_0.1.0_darwin_arm64.tar.gz"
      sha256 "f0e74929b16034e21438464f26769acd81fb2d21222899632e94bb7dd299faf3"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.1.0/rdxt_0.1.0_darwin_amd64.tar.gz"
      sha256 "e3a80723896e352d0fc04600e3795732dd56efc776a6be917f869bad728fecbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.1.0/rdxt_0.1.0_linux_arm64.tar.gz"
      sha256 "3a5ce14e4058469a6423db9efc1b2463c821141e9a595e5416d640aff498eab9"
    end
    on_intel do
      url "https://github.com/travelingflwr/rex-doc/releases/download/v0.1.0/rdxt_0.1.0_linux_amd64.tar.gz"
      sha256 "52fd4562c85e6bb11a4056b52908197c67ee4c9a750d72e7efbf62ee95846cbd"
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
    assert_match "rdxt v0.1.0", shell_output("#{bin}/rdxt --version")
  end
end
