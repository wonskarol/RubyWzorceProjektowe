require_relative 'command'
require 'fileutils'

class CopyFile < Command
  def initialize(source, target)
    super("Kopiowanie pliku #{source} do pliku #{target}")
    @source = source
    @target = target
    @target_exists = File.exists?(@target)
  end

  def execute
    if @target_exists
      @contents = File.read(@target)
    end
    FileUtils.copy(@source, @target)
  end

  def unexecute
    if @target_exists
      f = File.open(@target, "w")
      f.write(@contents)
      f.close
    else
      File.delete(@target)
    end
  end
end