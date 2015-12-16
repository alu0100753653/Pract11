require './lib/bib.rb'
include Bib

class Revista < Biblio
            
    	attr_accessor  :editorial,:abstract
            
    	def initialize(titulo,abstract,&block)
    		super(titulo,&block)
    		self.editorial=[]
    		self.abstract=abstract
    		
        end
        
        def journal(options = {})
            journal<< " (#{options[:name]})" if options[:name]
            journal<< " (#{options[:volumen]})" if options[:volumen]
            journal<< " (#{options[:issue]})" if options[:issue]
            
            editorial << journal
        end
        
        def to_s
            output = titulo
            output =abstract
            output << "\n#{'=' * titulo.size}\n\n"
            output << "Autor: #{autores.join('& ')}\n\n"

            editorial.each_with_index do |journal, index|
                output << "#{journal}\n"
            end
            
            
        end
        
end