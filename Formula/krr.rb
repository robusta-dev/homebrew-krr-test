class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"

    if OS.mac?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2-pre9/krr-macos-latest-v1.1.2-pre9.zip"
        sha256 "ba312b7ca92689d67dce635f5a878ed393b9aacc45f3aebf4d4f8fb7f5cd5755"
    elsif OS.linux?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2-pre9/krr-linux-latest-v1.1.2-pre9.zip"
        sha256 "c0bee6f6eae8948d0a1abdb68945cb233555a4a1d3a940ac6348ffc0874e91d2"
    end

    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "version"
    end
end
