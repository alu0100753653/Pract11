
Node = Struct.new(:value,:next,:previ)

class Node
		include Comparable
		def <=> other
			return unless other.respond_to? :full_name
			value <=> other.value
		end
end

class List
	include Enumerable
	attr_accessor :init,:final
	
	def initialize()
		@init = nil
		@final = nil
	end
	
	def is_empty()
		if @init==nil
			return true
		else
			return false
		end
	end
	
	def push_init(valor)
		aux=Node.new(valor,@init,nil) #ponemos de siguiente el nodo inicial y su previo será nulo
		if(@init != nil)	
			@init.previ=aux #el previo de inicio sera el nuevo nodo
		end
		@init=aux #e inicio será el nuevo nodo
	end
	
	def push_final(valor)
		if(@final==nil)  
			@init=Node.new(valor,nil,@init) 
			@final=@init
			return true
		else
			aux=Node.new(valor,nil,@final)  #el nuevo nodo tendrá de previo el ultimo nodo
			@final.next=aux #el siguiente a final será el nuevo nodo
			@final=aux
		end
	end
	
	def pop_init()
		if(@init != nil)
			aux=@init.value
		end
		
		if(@init.next==nil)  #si solo esta inicio, cuando sea extraido, inicio será igual a nulo
			@init=nil
		else
			@init=init.next #sino, inicio será igual a su siguiente
			@init.previ=nil #y el previo al nuevo inicio será nulo
		end
		return aux
	end
	
	def pop_final()
		if(@final != nil)
			aux=@final.value
			if(@final.previ==nil)  #si el previo es nulo, signfica que solo está el nodo final
				@final=nil
			else
				@final=@final.previ  #sino, final pasa a ser el anterior al nodo a extraer
				@final.next=nil  # y el siguiente de ese nodo final estará a nulo
			end
		end
		return aux
	end
	
	
	def each
		other=@init
		while(other!=nil)
			yield other.value
			other=other.next
		end
	end
	
	
end