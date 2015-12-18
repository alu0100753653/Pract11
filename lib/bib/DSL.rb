class Dsl
    
    attr_accesor :titulo, :lista, :apa
    
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
        @apa= Apa.new(lista)
    end
end

#
def libro(titulo,options={})
    x=Libro.new(options[:autores],options[:apellidos],titulo,options[:serie],options[:edicion],options[:numeroedicion],options[:fecha],options[:isbn])
    lista.push(x)
end

def periodico(titulo,options={})
    x=Periodico.new(titulo,options[:seccion],options[:num_pag])
    lista.push(x)
end

def revista(titulo,options={})
    x=Revista.new(titulo,options[:cant_pag],options[:num_publicacion])
    lista.push(x)
end

def electronico(titulo,options={})
    x=Electronico.new(titulo,options[:tipo],options[:size])
    lista.push(x)
end