class DeadModules < Formula
desc 'CLI tool to manage and delete old node_modules directories'
homepage 'https://github.com/furkando/dead_modules'
url 'https://github.com/furkando/dead_modules/archive/refs/tags/v1.0.2.tar.gz'
sha256 'fee32bb1c13b37b7bc22069a877ee684b8a23433ff2d2cd01394abfaa01b7683'
license 'MIT'

depends_on 'go' => :build

def install
  system 'go', 'build', *std_go_args, '-o', bin/'dead_modules'
end

test do
  assert_match 'Dead Modules v1.0.2', shell_output('#{bin}/dead_modules --version')
end
end
