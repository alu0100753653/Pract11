require './lib/bib/Apa'
class Dsl
    
    attr_accessor :titulo, :lista, :apa
    
    #Inicializador de la clase
    def initialize (titulo,&block) #Le pasamos el titulo y el resto de parametros se pasan a traves del bloque
        @titulo=titulo
        @lista=[]
        
        #Opcion para especificar el objeto o no
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval &block
            end
        end
      # @apa=Apa.new(lista)
    end

def libro(titulo,options={})
    x=Libro.new(options[:titulo],options[:autor],options[:apellidos],options[:serie],options[:edicion],options[:fecha],options[:isbn])
    @lista.push(x)
end

def periodico(titulo,options={})
    x=Periodico.new(titulo,options[:autor],options[:apellidos],options[:periodico],options[:seccion],options[:num_pag])
    @lista.push(x)
end

def revista(titulo,options={})
    x=Revista.new(options[:titulo],options[:autor],options[:apellidos],options[:revista],options[:cant_pag],options[:num_publicacion])
    @lista.push(x)
end

def electronico(titulo,options={})
    x=Electronico.new(titulo,options[:autor],options[:apellidos],options[:lugar],options[:disponibilidad])
    @lista.push(x)
end


def to_s
    cadena=""
    @lista.each {|x| cadena<< x.to_s}
    cadena
end

end