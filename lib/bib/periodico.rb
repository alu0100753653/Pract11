require './lib/bib.rb'
include Bib
class Periodico < Biblio
            
    	attr_accessor :paginas, :periodico
            
    	def initialize(autores, titulo,fecha,periodico, paginas)
    		super(autor,titulo,fecha)
    		@paginas = paginas
    		@periodico=periodico
        end
        
        def to_s
            "#{@autores}(#{@fecha}),#{@titulo},#{@periodico}, #{@paginas}"
        end
end