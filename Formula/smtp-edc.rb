class SmtpEdc < Formula
    desc "A powerful, cross-platform SMTP testing tool written in Go"
    homepage "https://github.com/asachs01/smtp-edc"
    url "https://github.com/asachs01/smtp-edc/archive/refs/tags/v0.1.0.tar.gz"
    sha256 ""
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/smtp-edc"
    end
  
    test do
      system "#{bin}/smtp-edc", "--version"
    end
  end