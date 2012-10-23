#!/usr/bin/env ruby
#
## from http://errtheblog.com/posts/89-huba-huba
## and  https://github.com/barrym/dotfiles/blob/master/install.rb

home = File.expand_path('~')

Dir['etc/*'].each do |file|
  next if file =~ /install|readme/i
  target = File.join(home, ".#{File.basename(file)}")
  puts `ln -svfh #{File.expand_path file} #{target}`
end
