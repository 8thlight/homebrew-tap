class RepoTutor < Formula
  desc "Teaches a code repository as a fast onboarding course in your terminal"
  homepage "https://github.com/8thlight/repo-tutor"
  version "0.2.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/8thlight/repo-tutor/releases/download/v0.2.0/repo-tutor_v0.2.0_darwin_arm64.tar.gz"
      sha256 "bff571096eac0fd152a2d473e4be2c57952475cca378c597b4c48f5e24fc74d7"
    end
    on_intel do
      url "https://github.com/8thlight/repo-tutor/releases/download/v0.2.0/repo-tutor_v0.2.0_darwin_amd64.tar.gz"
      sha256 "a481241b84a2b9b51252928893889617786b8733ba32c93ef149f35c60e906d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/8thlight/repo-tutor/releases/download/v0.2.0/repo-tutor_v0.2.0_linux_arm64.tar.gz"
      sha256 "e7e5d8aa897b10141b0858acaace457c439b6f82a8a2c33fcc106ab981a6e8d8"
    end
    on_intel do
      url "https://github.com/8thlight/repo-tutor/releases/download/v0.2.0/repo-tutor_v0.2.0_linux_amd64.tar.gz"
      sha256 "5e27f9852c3d9fc61118819dfea80f06569674a695acab8c481dd4f7c9c0226b"
    end
  end

  def install
    bin.install "repo-tutor"
  end

  test do
    assert_match "repo-tutor", shell_output("#{bin}/repo-tutor --version")
  end
end
