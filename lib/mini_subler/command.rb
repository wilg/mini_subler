require 'cocaine'

module MiniSubler
    
  class Command
    
    def self.vendored
      gem_root = File.expand_path '../../..', __FILE__
      s = Command.new
      s.command_path = File.join gem_root, "vendor", "SublerCLI"
      s
    end
    
    attr_accessor :command_path
    
    def get_metadata(file_path)
      file_path = File.expand_path file_path
      metadata_text = Cocaine::CommandLine.new(self.command_path, "-source :source -listmetadata", source: file_path).run
      hash = {}
      metadata_text.each_line do |line|
        if line.include?(self.command_path)
          # Do nothing
        else
          split = line.split ": "
          hash[split[0].parameterize("_").to_sym] = split[1].chomp
        end
      end
      hash
    rescue
      nil
    end

  end
  
end