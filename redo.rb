# frozen_string_literal: true

require 'open3'

# Run a system command
class Run
  def self.command(name, command, *args)
    args.flatten!

    out, error, status = Open3.capture3(command, *args)
    return [out, error, status] if status.success?

    raise ["#{name} failed:", command, *args, error].join("\n")
  end
end

# Run a redo command
class Redo
  def self.ifchange(*targets)
    Run.command('Redo command', 'redo-ifchange', targets)
  end
end
