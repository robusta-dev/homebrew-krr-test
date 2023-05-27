class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"

    if OS.mac?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2/krr-macos-latest-v1.1.2.zip"
        sha256 "af90eac8c98d985d5387d983c686459478a1eaada2b48c60c8d37c08222119b7"
    elsif OS.linux?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2/krr-linux-latest-v1.1.2.zip"
        sha256 "17d65688ed5c361e08caa36fe2bee7c90202479f88cb9f6f17e6e0b07bff8d05"
    end

    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "version"
    end
end
