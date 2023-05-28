class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"

    if OS.mac?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2-pre7/krr-macos-latest-v1.1.2-pre7.zip"
        sha256 "b027a2ae2d4f71c4b5f16a068488837b0a795bddeba9ca7e6f15d78f67b4f803"
    elsif OS.linux?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2-pre7/krr-linux-latest-v1.1.2-pre7.zip"
        sha256 "7c84c687fa1570e5c431d986be48aeaf1cc7b3ef9238b6832ea01e7a7da558e8"
    end

    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "version"
    end
end
