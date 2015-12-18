require './lib/bib.rb'
include Bib

class Periodico < Biblio
        
     attr_reader :titulo, :seccion, :num_pag
        attr_accessor :titulo, :seccion, :num_pag
        
        def initialize(titulo, seccion, num_pag)
           @titulo = titulo
           @seccion = seccion
           @num_pag = num_pag
        end
     
end