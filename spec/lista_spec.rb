require './lib/bib'
require './lib/bib/listad.rb'
require './lib/bib/libro'
require './lib/bib/periodico'
require './lib/bib/electronico'

include Bib

describe Bib do
    before :all do
        #Instancias de referencias Bibliograficas
        @refer1=Biblio.new(["Dave Thomas","Andy Hunt","chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide","The Facets of Ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013")
        @refer2=Revista.new(["Scott Chacon"], "Pro Git 2009th Edition", "Pro", "Apress", "2009 edition", "August 27, 2009","N = 294")
        @refer3=Biblio.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "Serie", "O’Reilly Media", " 1 edition", "February 4, 2008")
        @refer4=Libro.new(["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010",["ISBN-10: 1934356379", "ISBN-13: 978-1934356371"])
        @refer5=Electronico.new(["Richard E. Silverman"], "Git Pocket Guide", "Serie", "O’Reilly Media", "1 edition",  "August 2, 2013","www.google.es")
       
       #Instancia de nodo, en el que se almacena una referencia bibliografica
        @node1=Node.new(@refer1)
        
        #Instancia del objeto list, la cual se declara vacía para las pruebas de insercion y extraccion
        @list=List.new()
    end
    
    describe "Node" do
        it "Debe existir un Nodo de la Lista con su dato, su siguiente y su anterior" do
            expect(@node1.value).to eq(@refer1)
            expect(@node1.next).to eq(nil)
        end
    end
    
    describe "List" do
          
        it "Podemos saber si la lista esta vacia" do
            expect(@list.is_empty).to be true
        end
            
        it "Se puede insertar un elemento" do
            @list.push_init(@refer1) 
            expect(@list.init.value).to eq(@refer1)
        end
            
        it "Se extrae el primer elemento de la lista" do
            @list.push_init(@refer2)
            @list.push_init(@refer3)
            @list.pop_init
            expect(@list.init.value).to eq(@refer2)
        end
        
    it "Se pueden insertar varios elementos" do
        @list.push_init(@refer4)
        @list.push_init(@refer5)
        expect(@list.init.value).to eq(@refer5)
        @list.pop_init
        expect(@list.init.value).to eq(@refer4)
    end
        
    it "Debe existir una lista con su cabeza" do
        @list.push_init(@refer1)
        expect(@list.init.value).to eq(@refer1)
    end
        
=begin        it "Se puede insertar por el final" do
            @list.push_init(@refer3)
            @list.push_init(@refer4)
            @list.push_final(@refer2)
            expect(@list.pop_final).to eq(@refer2)
=end        end
    end
    
    describe "Herencia-Jerarquia" do
        it "Existe Herencia" do
          expect(@refer2.is_a?Biblio).to eq(true)
          expect(@refer4.is_a?Biblio).to eq(true)
          expect(@refer5.is_a?Biblio).to eq(true)
        end
        
        it "Existe un Libro" do
            expect(@refer4).to be_an_instance_of Libro
        end
        
        it "Existe una Revista" do
            expect(@refer2).to be_an_instance_of Revista
        end
        
        it "Existe un Documento Electronico" do
            expect(@refer5).to be_an_instance_of Electronico
        end
    end
end