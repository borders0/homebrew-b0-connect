class b0init < Formula
  desc "Installation of git connector"
  homepage "https://github.com/borders0/homebrew-b0-connect"
  url "https://github.com/borders0/homebrew-b0-connect/archive/refs/tags/v1.8.3.tar.gz"
  version "1.8.2"
  sha256 "e2e26f2c31ca71ed7dffffa760068a1b63bf01dee5f6e786ec55f5345d344683"
  license "MIT"

   def install
        bin.install Dir["scripts/*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
        system "python3 #{bin}/b0init.py"
      end

    def caveats
        <<~EOS
        Secure connection established, thank you!
        EOS
    end
    end
