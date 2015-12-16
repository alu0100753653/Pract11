require './lib/bib.rb'
include Bib

class Revista 
            
    	attr_accessor  :titulo,:abstract,:editorial
            
    	def initialize(titulo,abstract,&block)
    		#super(titulo,&block)
    		self.titulo=titulo
    		self.abstract = abstract
    		self.editorial=[]
    		
    	    if block_given?  
                if block.arity == 1
                    yield self
                else
                    instance_eval &block 
                end
            end
    	end
        
        def journal(a,options = {})
            journal=a
            journal<< " (#{options[:name]})" if options[:name]
            journal<< " (#{options[:volumen]})" if options[:volumen]
            journal<< " (#{options[:issue]})" if options[:issue]
            
            editorial<< journal
        end
        
        def to_s
            output = titulo
            output << "\n#{'=' * titulo.size}\n\n"
            #output << "Autor: #{autores.join('& ')}\n\n"
            editorial.each_with_index do |journal, index|
                output << "#{journal}\n"
            end
            
            output =abstract
        end
        
end