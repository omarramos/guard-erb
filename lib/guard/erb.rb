require 'guard'
require 'guard/guard'
require 'erb'
require 'struct_erb'

module Guard
  class Erb < Guard

    def initialize(watchers=[], options={})
      @input  = options[:input]
      @output = options[:output]
      super(watchers, options)
    end

    def start
      compile
    end

    def reload
      compile
    end

    def run_all
      compile
    end

    def run_on_changes(paths)
      compile
    end

    private

    def import(file, locals={})
      ::StructErb.new(locals).render(File.read(file))
    end

    def compile
      begin
        template = import(@input)
        File.open(@output,'w'){ |f| f.write(template) }
        UI.info         "Compiling #{@input} to #{@output}"
        Notifier.notify "Compiling #{@input} to #{@output}", :title => 'Erb'
        UI.info  "Compiled #{@output}"
        true
      rescue Exception => e
        UI.error        "Compiling #{@input} failed: #{e}"
        Notifier.notify "Compiling #{@input} failed: #{e}", :title => 'Erb', :image => :failed
        false
      end
    end
  end

end
