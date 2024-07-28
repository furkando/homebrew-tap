class DeadModules < Formula
desc 'CLI tool to manage and delete old node_modules directories'
homepage 'https://github.com/furkando/dead_modules'
url 'https://github.com/furkando/dead_modules/archive/refs/tags/v1.0.3.tar.gz'
sha256 '602aa81eddcbd5a17d7b9ddc3fe5e8652545badbf5df15c1951a30546b5413ba'
license 'MIT'

depends_on 'go' => :build

def install
  system 'go', 'build', *std_go_args, '-o', bin/'dead_modules'
end

test do
  assert_match 'Dead Modules v1.0.3', shell_output('#{bin}/dead_modules --version')
end
end
