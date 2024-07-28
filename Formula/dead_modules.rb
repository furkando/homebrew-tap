class DeadModules < Formula
desc 'CLI tool to manage and delete old node_modules directories'
homepage 'https://github.com/furkando/dead_modules'
url 'https://github.com/furkando/dead_modules/archive/refs/tags/.tar.gz'
sha256 '014158f30d2d558970518b3133b30a6a3595cc5bf203b601b83f6401b3e166a0'
license 'MIT'

depends_on 'go' => :build

def install
  system 'go', 'build', *std_go_args, '-o', bin/'dead_modules'
end

test do
  assert_match 'Dead Modules v', shell_output('#{bin}/dead_modules --version')
end
end
