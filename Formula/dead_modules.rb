class DeadModules < Formula
desc 'CLI tool to manage and delete old node_modules directories'
homepage 'https://github.com/furkando/dead_modules'
url 'https://github.com/furkando/dead_modules/archive/refs/tags/v1.0.1.tar.gz'
sha256 '620d92ec68502f29b66d5c7a334c75b268c5f49bda2204ef5f8fd3a2ad95914e'
license 'MIT'

depends_on 'go' => :build

def install
  system 'go', 'build', *std_go_args, '-o', bin/'dead_modules'
end

test do
  assert_match 'Dead Modules v1.0.1', shell_output('#{bin}/dead_modules --version')
end
end
