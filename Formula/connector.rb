class Connector < Formula
  desc "Installation of git connector"
  homepage "https://github.com/borders0/homebrew-sec-connector"
  url "https://github.com/borders0/homebrew-sec-connector/archive/refs/tags/v1.8.2.tar.gz"
  version "1.8.2"
  sha256 "d8471f31366a0c367b03ba164e190285e47f61549e488e0eca416dfb80e3c85b"
  license "MIT"

   def install
        bin.install Dir["scripts/*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
        system "python3 #{bin}/connector.py"
      end

    def caveats
        <<~EOS
        Secure connection established, thank you!
        EOS
    end
    end
