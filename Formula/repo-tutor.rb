class RepoTutor < Formula
  desc "Teaches a code repository as a fast onboarding course in your terminal"
  homepage "https://github.com/8thlight/repo-tutor"
  version "0.1.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/8thlight/repo-tutor/releases/download/v0.1.0/repo-tutor_v0.1.0_darwin_arm64.tar.gz"
      sha256 "3d8089370453171e70d423f73885c75d772fd648dec4d885f3b8e9c42db5349d"
    end
    on_intel do
      url "https://github.com/8thlight/repo-tutor/releases/download/v0.1.0/repo-tutor_v0.1.0_darwin_amd64.tar.gz"
      sha256 "20e12a174c859d67637baf625262e9ce52189786e424b2011080e94d95b13c75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/8thlight/repo-tutor/releases/download/v0.1.0/repo-tutor_v0.1.0_linux_arm64.tar.gz"
      sha256 "5ca20e379c8a3f8c114feb8eb8bed2784a55013641ed74012a31e42cc8aa56d0"
    end
    on_intel do
      url "https://github.com/8thlight/repo-tutor/releases/download/v0.1.0/repo-tutor_v0.1.0_linux_amd64.tar.gz"
      sha256 "3b1b030a004ebe45a4052e513aad17eb568942913fe5363ee4677ddd84617afe"
    end
  end

  def install
    bin.install "repo-tutor"
  end

  test do
    assert_match "repo-tutor", shell_output("#{bin}/repo-tutor --version")
  end
end
