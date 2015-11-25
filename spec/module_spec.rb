require './lib/bib'
require './lib/bib/listad.rb'

include Bib

describe Bib do
    
    before :all do
        
        @refer1=Libro.new("Dave Thomas", "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide","The Facets of Ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013","ISBN-13: 978-1937785499")
        @refer2=Libro.new("David Chelimsky", "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010","ISBN-10: 1934356379")
        @refer3=Libro.new("David Chelimsky", "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010","ISBN-10: 1934356379")
        @refer4=Revista.new("Scott Chacon", "Pro Git 2009th Edition", "Pro", "Apress", "2009 edition", "August 27, 2009","N = 294")
        @refer5=Revista.new("David Flanagan", "The Ruby Programming Language", "Serie", "O’Reilly Media", " 1 edition", "February 4, 2008","N=228")
        @refer6=Libro.new("David Chelimsky", "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 20, 2010","ISBN-10: 1934356379")
        
        
        @list=List.new()
        #Insertamos referencias para pruebas
        @list.push_init(@refer1)
        @list.push_init(@refer2)
        @list.push_init(@refer3)
        @list.push_init(@refer4)
        @list.push_init(@refer5)
        
    end
    
    describe "Pruebas para el modulo comparable" do
        it "Es menor?"do
          #comparamos si refer 1 es menor refer 2. True
          expect(@refer1<@refer2).to be true
        end
        
        it "Es mayor?" do
            #comparamos si refer 2 es mayor que refer 1. True
            expect(@refer2>@refer1).to be true
        end
        
        it "Es mayor?(mismos autores)" do
             expect(@refer2>@refer6).to be true
        end
        
        it "Son iguales?" do
            #Comparamos si refer 2 es igual a refer 3. True
            expect(@refer2==@refer3).to be true
        end
    end
    
    describe "Pruebas para el modulo Enumerable" do
        it "Minimo nodo de la lista" do
            expect(@list.min).to eql(@refer1)
        end
        
        it "Maximo nodo de la lista" do
            expect(@list.max).to eql(@refer4)
        end
        
        it "Contar elementos de la lista" do
            expect(@list.count).to eql(5)
        end
        
=begin        it "Ordenar lista" do
            @list.sort
            expect(@list.pop_init).to eql(@refer1)
            expect(@list.pop_final).to eql(@refer4)
=end      end
    end
end