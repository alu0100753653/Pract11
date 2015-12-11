require '/listad.rb'
requiere './lib/bib'

class ReferList < List
    
    def initialize(referencias)
        #Comprobar que sea una lista unicamente de referencias
        for i in 0..referencias.lenght-1 do
            raise 'La clase solo usa tipos de referencia' unless referencias[i].kind_of? Biblio
        end
        
        #Ordenamos la referencias
    end
    
    def ordenar(referencias)
        
    end
end