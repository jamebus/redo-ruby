# frozen_string_literal: true

require 'open3'

# Run a system command
class RunCommand
  def self.run(name, command, *args)
    args.flatten!

    out, error, status = Open3.capture3(command, *args)
    return [out, error, status] if status.success?

    raise ["#{name} failed:", command, *args, error].join("\n")
  end
end
