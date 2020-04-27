@command = 'ls -l'
# @test = 'outside execute'
# p @test
binding.pry
execute 'run' do
  command 'ls -l'
end







