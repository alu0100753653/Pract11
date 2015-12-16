require './lib/bib.rb'
include Bib

class Revista < Biblio
            
    	attr_accessor  :abstract,:editorial
            
    	def initialize(titulo,abstract,&block)
    		super(titulo,&block)
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
            journals=a
            journals<< " (#{options[:name]})" if options[:name]
            journals<< " (#{options[:volumen]})" if options[:volumen]
            journals<< " (#{options[:issue]})" if options[:issue]
            
            editorial << journals
        end
        
        def to_s
            
            output = titulo
            output << "\n#{'=' * titulo.size}\n\n"
            output << "Autor: #{autores.join('& ')}\n\n"
            
            editorial.each_with_index do |journal, index|
                output << "#{journal}\n"
            end
            output =abstract
        end
        
end