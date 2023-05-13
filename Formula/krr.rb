class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"
  
    if OS.mac?
      url "https://github.com/robusta-dev/krr/releases/download/v1.0.0-rc0/krr-mac.tar.gz"
      sha256 "add_your_mac_sha256_here"
    elsif OS.linux?
      url "https://github.com/robusta-dev/krr/releases/download/v1.0.0-rc0/krr-linux.tar.gz"
      sha256 "add_your_linux_sha256_here"
    end
  
    def install
      bin.install "krr"
    end
  
    test do
      system "#{bin}/krr", "--version"
    end
  end
  