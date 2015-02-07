require_relative 'slick_button'

class SlickButtonBlock < SlickButton
  def initialize(&block)
    @command = block
  end
  def on_button_push
    @command.call if @command
  end
end