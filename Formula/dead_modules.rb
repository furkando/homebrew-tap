class DeadModules < Formula
desc 'CLI tool to manage and delete old node_modules directories'
homepage 'https://github.com/furkando/dead_modules'
url 'https://github.com/furkando/dead_modules/archive/refs/tags/v1.0.1.tar.gz'
sha256 '5a062d7577124eda2931206502060ca979bb40e7c4723954db062de89bc1f2f5'
license 'MIT'

depends_on 'go' => :build

def install
  system 'go', 'build', *std_go_args, '-o', bin/'dead_modules'
end

test do
  assert_match 'Dead Modules v1.0.1', shell_output('#{bin}/dead_modules --version')
end
end
