class Snooze < Formula
  desc "Run a command at a particular time"
  homepage "https://github.com/leahneukirchen/snooze"
  url "https://github.com/leahneukirchen/snooze/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "abb0df288e8fe03ae25453d5f0b723b03a03bcc7afa41b9bec540a7a11a9f93e"
  license :public_domain

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "T00:00:00", shell_output("#{bin}/snooze -n")
  end
end
