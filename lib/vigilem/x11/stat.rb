require 'vigilem/core/stat'

module Vigilem
module X11
  # Stat(us) of X11 and the handler 
  # gem associated with it
  class Stat < Core::Stat
    
    # 
    # @param [String] gem_name, defaults to 'vigilem-x11'
    # @param [Proc] api_check, defaults to Proc.new { !!ENV['DISPLAY'] }
    def initialize(gem_name='vigilem-x11', opts={}, &api_check)
      system_name = 'x11'
      if block_given?
        super(system_name, gem_name, opts, &api_check)
      else
        super(system_name, gem_name, opts) { !!ENV['DISPLAY'] }
      end
    end
    
    # 
    # @return [Stat]
    def self.default
      @default ||= new
    end
  end
  
end
end
Vigilem::X11::Stat.default
