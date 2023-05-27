class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"

    if OS.mac?
        url "https://github.com/robusta-dev/krr/releases/download/test-release-build-14/krr-macos-latest-test-release-build-14.zip"
        sha256 "f3843786333c42f2856bda73a7fd36617e0a8f57a30208962aad61942194c053"
    elsif OS.linux?
        url "https://github.com/robusta-dev/krr/releases/download/test-release-build-14/krr-linux-latest-test-release-build-14.zip"
        sha256 "df9bf270d116c2b67053880eeee81039abd3c19ffebbb20e6b6b6027fdaaa62c"
    end

    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "version"
    end
end
