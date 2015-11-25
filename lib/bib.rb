require "bib/version"

module Bib
    class Biblio
        
        include Comparable
        
        attr_accessor :autores, :titulo, :serie, :editorial, :edicion, :fecha
        
        def initialize(autores, titulo, serie, editorial, edicion, fecha)
        @autores = autores
        @titulo = titulo
        @serie = serie;
        @editorial = editorial
        @edicion = edicion
        @fecha = fecha
        end
                
        def to_s
        "(#{autores},#{titulo},#{serie},#{editorial},#{edicion},#{fecha})"
        end
        
        def <=> other
            compar=autores <=> other.autores
            
            if compar == 0
                return fecha<=>other.fecha
            else
                return compar
            end
            
        end
    end
    
    class Libro < Biblio
    
        attr_accessor :isbn
        
        def initialize(autor, titulo, serie, editorial, edicion, fecha, isbn)
        super(autor, titulo, serie, editorial, edicion, fecha)
            @isbn = isbn
        end
    end

    class Revista < Biblio
            
    	attr_accessor :revista
            
    	def initialize(autor, titulo, serie, editorial, edicion, fecha, revista)
    		super(autor, titulo, serie, editorial, edicion, fecha)
    			@revista = revista
        end
    end

    class Electronico < Biblio
    	attr_accessor :url
            
    	def initialize(autor, titulo, serie, editorial, edicion, fecha, url)
    		super(autor, titulo, serie, editorial, edicion, fecha)
            @url = url
        end
    end
end
