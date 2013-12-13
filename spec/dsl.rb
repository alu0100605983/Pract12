load 'lib/pract09.rb' 

describe "DSL" do
                
                it " suma" do
                        @sum = Mydsl.new("suma") do
                                operando(2,2,[1,1,2,2])
                                operando(2,2,[2,2,4,4])
                        end
                        @sum.run.should eq(Matriz.constructorvec(2,2,[3,3,6,6]))

                end
                
                

                it "resta" do
                        @res = Mydsl.new("resta") do
                                operando(2,2,[2,2,4,4])
                                operando(2,2,[1,1,2,2])

                        end

			@res.run.should eq(Matriz.constructorvec(2,2,[1,1,2,2]))

                end

                it "multplicacion" do
                        @mult = Mydsl.new("multiplicacion") do
                                operando(3,3,[1,1,1,2,2,2,3,3,3])
                                operando(3,3,[1,2,3,1,2,3,1,2,3])
                        end

			@mult.run.should eq(Matriz.constructorvec(3,3,[3,6,9,6,12,18,9,18,27]))
                        
                end


        end
