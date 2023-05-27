class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"

    if OS.mac?
        url "https://github.com/robusta-dev/krr/releases/download/test-release-build-13/krr-macos-latest-test-release-build-13.zip"
        sha256 ""
    elsif OS.linux?
        url "https://github.com/robusta-dev/krr/releases/download/test-release-build-13/krr-linux-latest-test-release-build-13.zip"
        sha256 ""
    end

    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "version"
    end
end
