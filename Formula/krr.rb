class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"
  
    if OS.mac?
      url "https://github.com/robusta-dev/krr/releases/download/v1.0.0-rc0/krr-mac.tar.gz"
      sha256 "4df4206c1e51d86d0ca99f2b1b2b51aa80e175118e44ed20be58eeafeadad571"
    elsif OS.linux?
      url "https://github.com/robusta-dev/krr/releases/download/v1.0.0-rc0/krr-linux.tar.gz"
      sha256 "todo"
    end
  
    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "--version"
    end
end
  