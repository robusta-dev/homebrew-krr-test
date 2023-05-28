class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"

    if OS.mac?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2-pre4/krr-macos-latest-v1.1.2-pre4.zip"
        sha256 "0664d78bb830fe6dc0177e83897d563367961c9ea218efbf3d0005adc648ea9b"
    elsif OS.linux?
        url "https://github.com/robusta-dev/krr/releases/download/v1.1.2-pre4/krr-linux-latest-v1.1.2-pre4.zip"
        sha256 "5aae1cba21a4a45e80989fc96551365fe540c4b5bfcfa35c76741d53151ce4fb"
    end

    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "version"
    end
end
