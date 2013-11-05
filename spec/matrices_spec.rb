require './lib/matrices.rb'

describe Matriz do
        before :each do
                @m1 = Matriz.new(2,2)
                @m1[0] = [1,2]
                @m1[1] = [3,4]
                
                @m2 = Matriz.new(2,2)
                @m2[0] = [1,2]
                @m2[1] = [3,4]
                
                @m3 = Matriz.new(2,3)
                @m3[0] = [1,2,3]
                @m3[1] = [4,5,6]
                
        end
        describe " # Almacenamiento de matrices. " do
                it " # Se debe almacenar el numero de filas " do
                        @m1.N
                end
                it " # Se debe almacenar el numero de columnas " do
                        @m1.M
                end
                it " # Se debe poder almacenar datos en forma vectorial en la matriz " do
                        @m1[0] = [1,2]
                end
                it " # Se debe poder acceder a los datos almacenados en la matriz " do                
                        @m1[1] = [3,4]
                        @m1[1][0].should eq(3)
                end
                it " # Se deben poder almacenar todo tipo de datos numericos (flotantes, enteros, etc...) " do                
                        @m1[0] = [3.0,4.5]
                        @m1[1] = [1.1,4.0]
                        @m1.to_s.should == "3.0\t4.5\t\n1.1\t4.0\t\n"
                end
        end
        
        describe " # Operadores unarios. " do
      it " # Se debe poder transformar la matriz a una cadena de caracteres" do
        @m1.to_s.should == "1\t2\t\n3\t4\t\n"
      end
        
         it " # Se debe poder negar una matriz con el operador -" do
        (-@m1).to_s.should == "-1\t-2\t\n-3\t-4\t\n"
      end
    end
        
        describe " # Operadores aritmeticos. " do
      it " # Se deben poder sumar matrices" do
        (@m1 + @m2).to_s.should == "2\t4\t\n6\t8\t\n"
         end
        
         it " # Se deben poder restar matrices" do
        (@m1 - @m2).to_s.should == "0\t0\t\n0\t0\t\n"
      end
        
         it " # Se deben poder multiplicar matrices" do
        (@m1 * @m3).to_s.should == "9\t12\t15\t\n19\t26\t33\t\n"
                (@m1 * 2).to_s.should == "2\t4\t\n6\t8\t\n"
      end
        
    end
        
end