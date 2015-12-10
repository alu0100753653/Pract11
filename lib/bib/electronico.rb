require './lib/bib.rb'
include Bib
class Electronico < Biblio
    	attr_accessor :url, :edicion, :editor
            
    	def initialize(autores, titulo,fecha,edicion,editor,url)
    		super(autor,titulo,fecha)
            @url = url
            @edicion=edicion
            @editor=editor
        end
        
        def to_s
            "#{@autores}(#{@fecha}),#{@titulo},(#{@edicion}),(#{@editor}),Disponible en:#{@url}"
        end
end