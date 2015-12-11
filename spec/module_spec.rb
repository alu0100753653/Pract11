require './lib/bib'
require './lib/bib/listad'
require './lib/bib/libro'
require './lib/bib/periodico'
require './lib/bib/electronico'

include Bib

describe Bib do
    
    before :all do
        @refer1=Libro.new(['Juan Perez'],'El amor es para tontos','Santillana',1,2,2003)
        @refer2=Libro.new(['Pedro ALvarez'],'Mienteme','Planeta',5,1,2015)
        @refer3=Periodico.new(['Ana Suarez'], 'Elecciones',2015,'El pais',4)
        @refer4=Periodico.new(['Luis Gonzalez'], 'Partidos Inutiles',2015,'El Dia',2)
        @refer5=Electronico.new(['Martina Espinosa'],'A Beautiful Mind',2001,1,'Londres','www.writter.com')
        
        @listarefer=ReferList.new()
        
        
    end
    
    it "Instancia" do
        expect(@refer3.instance_of?Periodico).to eq(true)
    end
    
    
    
    
    
end