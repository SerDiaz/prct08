=begin
***********************************************************
*Practica 6 LPP. Desarrollar una clase fraccion usando Desarrollo Dirigido
por el Comportamiento y la herramienta Rspec.

*Autores:
    Sergio Diaz Gonzalez
    Ivan García Campos

*Comentario cabecera
***********************************************************

=end

require "lib/fraccion.rb"

describe Fracciones do
        before :each do
                @f1=Fracciones.new(1,2)
                @f2=Fracciones.new(2,2)
        end
        
        describe "Combrobacion de funcionamiento num() y denom()" do
                it "Funcion num()" do
                        @f1.num.should eq(1)
                end
                it "Funcion denom()" do
                        @f1.denom.should eq(2)
                end
        end
        describe "Comprobacion de muestra de datos" do
                it "Mostrar fraccion de la forma a/b" do
                        @f1.to_s.should eq("1/2")
                end
                it "Mostrar fraccion en punto flotante" do
                 @f1.flotante.should eq(1/2)
                end
        end
        describe "Operaciones basicas de fracciones" do
                
                it "Comparacion" do
                        (@f1 == @f2).should eq(false)
                end
                
                it "Absoluto" do
                        @f1.abs
                end
        
                it "Reciproco" do
                        @f1.reciproco.should eq(Fracciones.new(2,1))
                end
                
                it "Suma" do
                        (@f1+@f2).should eq(Fracciones.new(3,2))
                end
                
                it "Resta" do
                        (@f1-@f2).should eq(Fracciones.new(-1,2))
                end
                
                it "Multiplicacion" do
                        (@f1*@f2).should eq(Fracciones.new(1,2))
                end
                
                it "Division" do
                        (@f1/@f2).should eq(Fracciones.new(1,2))
                end
                
                it "Resto" do
                        (@f1 % @f2).should eq(0)
                end
                
                it "Menor que" do
                        (@f1 < @f2).should eq(true)
                end
                
                it "Mayor que" do
                        (@f1 > @f2).should eq(false)
                end
                
                it "Menor o igual que" do
                        (@f1 <= @f2).should eq(true)
                end
                
                it "Mayor o igual que" do
                        (@f1 >= @f2).should eq(false)
                end
        end        
        
        
        
        describe "Operaciones de Formar Conjunta" do
         it "Operaciones Conjuntas" do
                        if((@f1%@f2) == 0)
                         (((@f1.opuesto)*@f2).abs)
                        else
                                puts 1
                        end
         end
        end
end