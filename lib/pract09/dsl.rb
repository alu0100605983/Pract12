class Mydsl #===clase mydsl
        attr_accessor :resultado

        def initialize (operacion, &block)
                @operando = []
		@operacion = operacion
                
                if block_given?  
                        if block.arity == 1
                                yield self
                        else
                                instance_eval &block 
                        end
                end
        end

	def operando(fil, col, vector) #==Metodo para añadir un operando
                        aux=Matriz.constructorvec(fil, col ,vector)
                        @operando << aux
        end
        

        def run        
                
                #Elegir el tipo de operacion
                case @operacion
                when "suma" #Suma de matrices
                        resultado = (@operando[0] + @operando[1])
                        
                when "resta" #operacion resta de matrices
                        
                          resultado = (@operando[0] - @operando[1])

                when "multiplicacion" #operacion producto de matrices
                        
                          resultado = (@operando[0] * @operando[1])
                        
                when "ayuda" #mostrar ayuda para ver comandos
                        puts "Puede utilizar suma, resta y multiplicacion"

                else #Comando no identificado
                        puts "No se reonoce la orden: #{@operacion}"
                end

        end

        


end


