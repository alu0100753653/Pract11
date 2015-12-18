require './lib/bib.rb'
include Bib

class Revista < Biblio
    
     attr_reader :titulo, :cant_pag, :num_publicacion
     attr_accessor :titulo, :cant_pag, :num_publicacion
        
        def initialize(titulo, cant_pag, num_publicacion)
           @titulo=titulo
           @cant_pag = cant_pag
           @num_publicacion = num_publicacion
        end
    
end