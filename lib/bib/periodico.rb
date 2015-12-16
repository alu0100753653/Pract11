require './lib/bib.rb'
include Bib
class Periodico < Biblio
            
    	attr_accessor :paginas, :periodico
            
    	def initialize(autores, titulo,fecha,periodico, paginas)
    		super(autor,titulo)
    		@paginas = paginas
    		@periodico=periodico
    		@fecha=fecha
        end
        
        def to_s
            "#{@autores}(#{@fecha}),#{@titulo},#{@periodico}, #{@paginas}"
        end
end