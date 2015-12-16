require "bib/version"

module Bib
    class Biblio
        
        include Comparable
        
        attr_accessor :titulo,:autores
        
        def initialize(titulo, &block)
            self.titulo = titulo
            self.autores = []
            
            if block_given?  
                if block.arity == 1
                    yield self
                else
                    instance_eval &block 
                end
            end
        end
        
        def author(a,options = {})
             authors=a
             authors<< " (#{options[:surname]})" if options[:surname]
             authors<< " (#{options[:name]})" if options[:name]
             
             autores << authors
        end
                
         def to_s
            output = titulo
            output << "\n#{'=' * titulo.size}\n\n"
            output << "Autor: #{autores.join('& ')}\n\n"
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
