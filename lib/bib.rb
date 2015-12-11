require "bib/version"

module Bib
    class Biblio
        
        include Comparable
        
        attr_accessor :autores, :titulo, :fecha, :autor_f
        
        def initialize(autores,titulo,fecha)
            @autores = autores
            @titulo = titulo
            @fecha = fecha
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
        
        def f_autor
            @autor_f=[]
            @autores.each do |autor| #recorremos el vector de autores
                aux=""
                autor = autor.split(" ") #separamos el nombre del apellido (ahora tenemos un array)
                autor= autor.reverse #intercambiamos el apellido por el nombre
                autor.each_with_index do |vec, x| #recorremos el array de autores intercambiado
                    if(x<1) #si es el apellido
                        aux+=vec.capitalize #ponemos la primera letra en mayuscula
                        aux+=","#y ponemos una coma antes del nombre
                    else
                        aux+=vec[0].capitalize #Si es el nombre, ponemos solo la inicial y en mayuscula
                        aux+="." #y un punto
                    end
                end
                @autor_f.push(aux) #lo insertamos en el vector formateado de autores
            end
            
            
        end
    end
    
end
