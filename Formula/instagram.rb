class Instagram < Formula
  desc "Personal Instagram Content Publishing API CLI"
  homepage "https://github.com/FerdiKT/instagram-cli"
  url "https://github.com/FerdiKT/instagram-cli.git",
      tag:      "v0.1.0",
      revision: "74d73ddd05dd211eab8c7a1c0ff5fe3fd183d49c"
  version "0.1.0"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/FerdiKT/instagram-cli/internal/buildinfo.Version=#{version}
      -X github.com/FerdiKT/instagram-cli/internal/buildinfo.Commit=74d73dd
      -X github.com/FerdiKT/instagram-cli/internal/buildinfo.Date=2026-05-12T20:20:07Z
    ].join(" ")

    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/instagram"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/instagram version")
  end
end
