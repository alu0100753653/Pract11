require "bib/version"

module Bib
  # Your code goes here...
    class Biblio
        include Comparable
       
        attr_reader :autores,:apellidos, :titulo, :fecha, :serie, :edicion ,:isbn 
        
        def initialize(autores,apellidos, titulo, fecha, serie, edicion,isbn)
            @autores = autores
            @apellidos = apellidos
            @titulo = titulo
            @fecha = fecha
            @serie = serie
            @edicion = edicion
            @isbn = isbn
        end
        
        def to_s
          "#{@autores.join(",")}\n#{@titulo}\n#{@fecha}\n#{@apellidos}"
        end
       
        def <=>(other)
			if(@apellidos != other.apellidos)
				@apellidos <=> other.apellidos
			else
				if(@fecha != other.fecha)
					@fecha <=> other.fecha
				else
					@titulo <=> other.titulo
				end
			end
		end
		
		def getautores()
			tam = @autores.length
			i, j = 0
			while i < (tam - 1)
				cadena = "#{cadena}"+"#{@autores[i]} #{@apellidos[i]}, "
				i = i+1
				j = j+1
			end
			cadena = "#{cadena}"+"#{@autores[i]} #{@apellidos[i]}"
		end
		
		def gettitulo()
			"#{@titulo}"
		end


        def getedicion()
			"#{@edicion}"
        end


		def getserie()
			"#{@serie}"
		end

		def getisbn()
			tam = @isbn.length
			a = @isbn[0].length
			cadena = "ISBN-#{a}: "
			if a > 10
				cadena = "#{cadena}" + "#{@isbn[0][-a..-11]}" + " - " + "#{@isbn[0][-10..-1]}"
			else
				cadena = "#{cadena}"+"#{@isbn[0]}"
			end
			i = 1
		end

		def getfecha()
			"#{@fecha}"
		end

		def to_s(valor)
			"#{@valor}"
		end
		
		
    end
end
