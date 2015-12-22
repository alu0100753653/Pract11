require './lib/bib'
require './lib/bib/Libro'
require './lib/bib/Periodico'
require './lib/bib/Electronico'
require './lib/bib/Revista'
require './lib/bib/Lista.rb'
require './lib/bib/DSL'


include Bib

describe Bib do
 
  
    before :each do
        @apa = Dsl.new("Lista APA") do
            libro "La Sombra del Viento",
                :autor => "Carlos",
                :apellidos =>"Ruiz",
                :serie => 1,
                :edicion => 9,
                :fecha => "10 de Diciembre 2011",
                :isbn => 9788408079545
                
             periodico "Mojo Picon",
              :autor => "Ramiro",
              :apellidos => "Benitez",
              :periodico => "El dia",
              :seccion => "Seccion Nuestra Gente",
              :num_pag => 1
              
             revista "Técnicas, materiales y aplicaciones en nanotecnología",
              :autor => "Juan M",
              :apellidos => "CASTAGNINO",
              :revista => "Acta Bioquímica Clínica Latinoamericana",
              :cant_pag => 41,
              :num_publicacion => 2
              
            electronico "M. A vindication of the rights of women",
                :autor => "WOLLS TONECRAFT",
                :apellidos => "TONECRAFT",
                :lugar => "New York",
                :disponibilidad => "Disponible"
        end
    end
        
         describe "Creacion" do
            it "Se crea correctamente" do
                expect(@apa).to_not be nil
            end
        end
    
        describe "Funcionamiento " do
          it "Se muestra en formato apa" do
             expect(@apa.to_s).to eq "\n   Carlos\n   Ruiz\n   (9)\n   10 de Diciembre 2011; edition (1)\n   9788408079545\n\nMojo Picon\n  Ramiro\n  El dia\n  Seccion Nuestra Gente\n  1\n  \n\n  Juan M\n  Acta Bioquímica Clínica Latinoamericana\n  41\n  2\n  \nM. A vindication of the rights of women\n  WOLLS TONECRAFT\n  New York\n  Disponible\n  \n"
          end
        end
    

end

