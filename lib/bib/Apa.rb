require './lib/bib/Lista.rb'
require './lib/bib/Libro'
require './lib/bib/Periodico'
require './lib/bib/Electronico'
require './lib/bib/Revista'

class Apa
    
        attr_accessor :lista1,:lista2,:lista
        
        def initialize(lista)
                @lista1 = lista
                @lista2 = Lista.new
        end
        
        
        #Nombres y apellidos.
        
        def nombre(other)
            i = 0
            if(other.autores.length > 1)
                while (i<other.autores.length-2)
                    nombre = "#{nombre}"+"#{other.apellidos[i]}," + "#{other.autores[i][0]}.,"
                    i = i+1
                end
                nombre = "#{nombre}"+"#{other.apellidos[i]}," + "#{other.autores[i][0]}. &"
                i = i+1
            end
            nombre = "#{nombre}"+"#{other.apellidos[i]}," + "#{other.autores[i][0]}."
        end
        
        def sort
            @lista2 = lista1.sort
        end
        
        #Formateado y sangria.
        
        def to_s
             cadena=""
            lista2.each {|x| cadena << x.to_s}
    		cadena
        end
        
end