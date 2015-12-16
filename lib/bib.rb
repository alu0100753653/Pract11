require "bib/version"

module Bib
    class Biblio
        
        include Comparable
        
        attr_accessor :autores, :titulo
        
        def initialize(titulo, &block)
            self.autores = []
            self.titulo = titulo
            
            if block_given?  
                if block.arity == 1
                    yield self
                else
                    instance_eval &block 
                end
            end
        end
        
        def author(options = {})
             author<< " (#{options[:surname]})" if options[:surname]
             author<< " (#{options[:name]})" if options[:name]
             
             autores << author
        end
                
        def to_s
        "{#{titulo})"
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
