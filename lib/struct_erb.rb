require 'erb'
require 'ostruct'

class StructErb < OpenStruct

  def import(file, locals={})
    ::StructErb.new(locals).render(File.read(file))
  end

  def render(template)
    ::ERB.new(template).result(binding)
  end

end
