require './lib/bib/Nodo.rb'

class Lista
   	include Enumerable
   	attr_reader :inicio,:fin
   	attr_accessor :inicio,:fin
   
      def initialize()
         @inicio = nil
         @final = nil
      end
      
      def empty 
          if (@inicio == nil)
              return true
          else
              return false
          end
      end
      
      def push_i(valor) 
         
         aux = Node.new(valor,@inicio,nil)
         if (@inicio != nil)
            @inicio.previous = aux
         end
         @inicio = aux
         return true
      end
      
      def push_f(valor)
         if(@final==nil)
            @inicio= Node.new(valor,nil,@inicio)
            @final=@inicio
            return true
         else
            aux = Node.new(valor,nil,@final)
            @final.next = aux
            @final = aux
            return true
         end
      end
      
      def pop_i()
         
         if(@inicio != nil)
             aux=@inicio.value
         end
         if(@inicio.next==nil)then
         	@inicio=nil
         else
         	@inicio = @inicio.next
         	@inicio.previous = nil
         end
         return aux
         
      end
      
      def pop_f()
         aux = @final.value
         if(@final.previous == nil)then
         	@final = nil
         else
         	@final = @final.previous
         	@final.next = nil
         end
         return aux
      end
      
      
      def to_s
            @inicio.to_s 
      end
      
      def each
      		nodo = @inicio
      		while(nodo != nil)
      			yield nodo.value
      			nodo = nodo.next
      		end
      		
      end 
      
def length
         nodo=@inicio
         cont=0
         while(nodo!=nil)
            cont+=1
            nodo=nodo.next
         end
         cont
end
      
end