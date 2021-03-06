# Pruebas Unitarias para la Matriz Dispersa

load "lib/pract09.rb"
require "test/unit"


class Test_MatrizDispersa < Test::Unit::TestCase
       
        def test_1
        
                assert_equal Matriz.constructorvec(3,3,[0,2,4,0,2,4,2,4,6]), (Matriz.constructorvec(3,3,[0,1,2,0,1,2,1,2,3]) + Matriz.constructorvec(3,3,[0,1,2,0,1,2,1,2,3]))   
	
	end

	def test_2
	
		assert_equal Matriz.constructorvec(2,2, [Fraccion.new(1,2), 1, Fraccion.new(1,2),1]), (Matriz.constructorvec(2,2,[1,1,1,1]) *
Matriz.constructorvec(2,2,[ Fraccion.new(1,2),Fraccion.new(0,1),Fraccion.new(0,1),Fraccion.new(0,1)]))
        end


end
