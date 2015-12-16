require './lib/bib.rb'
include Bib

class Libro < Biblio
    
        attr_accessor :editorial, :fecha
        
        def initialize(titulo,fecha,&block)
            super(titulo,&block)
            self.editorial=[] #edicion y volumen
            self.fecha=fecha
        end
        
        
        def journal(options = {})
            journal<< " (#{options[:name]})" if options[:name]
            journal<< " (#{options[:volumen]})" if options[:volumen]
            journal<< " (#{options[:edicion]})" if options[:edicion]
            
            editorial << journal
        end
        
        def to_s
            output = titulo
            output << "\n#{'=' * titulo.size}\n\n"
            output << "Autor: #{autores.join('& ')}\n\n"

            editorial.each_with_index do |journal, index|
                output << "#{journal}\n"
            end
            output =fecha
        end
        
        #def to_s
         #   "#{@autores}(#{@fecha}),#{@titulo},(#{@edicion}),(#{@volumen}),#{@editorial}"
        #end
end