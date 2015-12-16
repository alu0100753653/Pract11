require "bib/version"

module Bib
    class Biblio
        
        include Comparable
        
        attr_accessor :autores, :titulo
        
        def initialize(titulo, &block)
            self.autores = []
            self.titulo = titulo
        end
        
        def author
             author<< " (#{options[:surname]})" if options[:surname]
             author<< " (#{options[:name]})" if options[:name]
             
             autores << author
        end
                
        def to_s
        "(#{autor_f},#{titulo},#{fecha})"
        end
        
        #Metodo para el modulo comparable
        def <=> other
            compar1=autores <=> other.autores
            compar2=fecha<=>other.fecha
            
            if compar1 == 0
                return compar2
            elsif compar2==0
                return titulo<=>other.titulo
            else
                return compar1
            end
            
        end
    end
end
