require './lib/refer/nodo'
class List
    include Enumerable
    
    attr_accessor :init
    attr_reader :init
    
    def initialize()
        @init=nil
    end
    
    def is_empty()
        if @init==nil
            return true
        else
            return false
        end
    end
    
    def push_init(value)  #Insertar el principio de la lista
        if(!is_empty)
            aux=Node.new(value,@init)
            @init = aux
        else
            @init=Node.new(value,nil)
        end
    end
    
    def push_final(value) #Insertar al final de la lista
        if(!is_empty)
           aux=Node.new(value,nil)
           aux1=@init
           
            while(aux1.next != nil)
                aux1=aux.next
            end
            aux1.next=aux
        else
            @init=Node.new(value,nil)
        end
    end
    
    def pop_init()  #Extraer el primer elemento de la lista
        if(!is_empty)
            aux=@init.value
            if(@init.next ==nil)
                @init=nil
            else
                @init=@init.next
            end
            return aux
        else
            puts "La lista esta vacia"
        end
    end
    
    def pop_final() #Extraer el ultimo elemento de la lista
        if(!is_empty)
            aux1=@init
            aux=aux1
            while(aux1.next != nil)
                aux=aux1
                aux1=aux1.next
            end
            aux.next=nil #ponemos el next a null porque el nodo ya no existe
            return aux1.value
        else
            puts "La lista esta vacia"
        end
    end
    
    def each
        node=@init
        while(node!=nil)
            yield node.value
            node=node.next
        end
    end
end
