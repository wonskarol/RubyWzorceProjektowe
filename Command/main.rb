require_relative 'save_command'
require_relative 'slick_button'
require_relative 'slick_button_block'
require_relative 'composite_command'
require_relative 'create_file'
require_relative 'copy_file'
require_relative 'delete_file'

#Proste rozwiazanie
#strona 165
save_button = SlickButton.new(SaveCommand.new)
save_button.on_button_push

#Blcki w roli polecen
#strona 166
new_button = SlickButtonBlock.new do
  puts 'tworze dokument'
end
new_button.on_button_push

#rejestrowanie polecen
#strona 167
cmds = CompositeCommand.new
cmds.add_command(CreateFile.new('file1.txt', "Witaj swiecie \n"))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
cmds.add_command(DeleteFile.new('file1.txt'))

puts cmds.description
cmds.execute
cmds.unexecute