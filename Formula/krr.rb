class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"

    if OS.mac?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2-pre/krr-macos-latest-v1.1.2-pre.zip"
        sha256 "d669e5c26158ec021d61d389539a76a0934ae04539510829eda00f8bf3eba54c"
    elsif OS.linux?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2-pre/krr-linux-latest-v1.1.2-pre.zip"
        sha256 "f01be234796970e0804c50734ac28a9b50662f76fb6bb5cb91b054e9b534ca34"
    end

    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "version"
    end
end
