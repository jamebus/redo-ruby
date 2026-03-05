# frozen_string_literal: true

require 'run_command'

# Run a redo command
class Redo
  def self.ifchange(*targets)
    RunCommand.run('Redo command', 'redo-ifchange', targets)
  end
end
