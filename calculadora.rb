class Calculadora
    #executa a multiplicação
    #mult => multiplicação
    def mult(num1,num2)
        resulatado = num1*num2  
        resulatado.round(1)     
    end
    # executa a soma 
    def soma(num1, num2)
        resulatado = num1 + num2  
        resulatado.round(1)  
    end
    #executa a div
    #div =>divisão
    def div(num1,num2)
        return "erro" if num2 == 0 
        resultado = num1 / num2
        resultado.round(1) 
    end
    # executa a subtração 
    # subt => subtração
    def subt(num1,num2)
        resulatado = num1- num2  
        resulatado.round(1)     
    end
    #raiz quadrada 
    # quad=> quadrada
    def quad(numero)
        return "erro" if numero < 1
        resultado = Math.sqrt(numero)
        resultado.round(1)         
    end

end

