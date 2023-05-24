class Krr < Formula
    desc "Kubernetes Resource Recommender by Robusta"
    homepage "https://github.com/robusta-dev/krr"
  
    if OS.mac?
      url "https://github.com/robusta-dev/krr/releases/download/v1.1.0/krr-macos-v1.1.0.zip"
      sha256 "5bcda1456cdb1e4f5e047084182e051164f2da32f3a9392463a9210deaa44408"
    elsif OS.linux?
      url "https://github.com/robusta-dev/krr/releases/download/v1.1.0/krr-linux-v1.1.0.zip"
      sha256 "12712e6009a445da4f0564fc913eba444fd29b670fddb201bb8db13ed5861aef"
    end
  
    def install
        libexec.install Dir["*"]
        bin.write_exec_script (libexec/"krr")
    end
    
    test do
        system "#{bin}/krr", "version"
    end
end
  