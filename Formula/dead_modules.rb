class DeadModules < Formula
desc 'CLI tool to manage and delete old node_modules directories'
homepage 'https://github.com/furkando/dead_modules'
url 'https://github.com/furkando/dead_modules/archive/refs/tags/v1.0.2.tar.gz'
sha256 '2597711341b097c3d6cbec4efc34449defc1a2c97fc7a69831e59b258078fdbe'
license 'MIT'

depends_on 'go' => :build

def install
  system 'go', 'build', *std_go_args, '-o', bin/'dead_modules'
end

test do
  assert_match 'Dead Modules v1.0.2', shell_output('#{bin}/dead_modules --version')
end
end
