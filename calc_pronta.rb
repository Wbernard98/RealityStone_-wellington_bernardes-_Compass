#soma
require 'rspec'
require_relative '../logic/calculadora'

describe('Calculo de adição') do 
    
    calculadora = Calculadora.new

    it('somar dois numeros inteiros positivos') do
        expect(calculadora.soma(10, 2)).to eq 12
    end

    it('Deve somar um número com 0') do
        expect(calculadora.soma(9, 0)).to eq 9
    end

    it(' somar dois números inteiros negativos') do
        expect(calculadora.soma(-2, -1)).to eq -3
    end

    it('somar um número inteiro negativo com um número inteiro positivo') do
        expect(calculadora.soma(-2, 7)).to eq 5
    end

    it('somar um número inteiro negativo com 0') do
        expect(calculadora.soma(-15, 0)).to eq -15
    end    

    it('somar dois números flutuantes positivos') do
        expect(calculadora.soma(23.2, 12.6)).to eq 35.8
    end    

    it(' somar dois números flutuantes negativos') do
        expect(calculadora.soma(-3.1, -6.4)).to eq -9.5
    end

    it(' somar um número flutuante negativo com um número flutuante positivo') do
        expect(calculadora.soma(-11.3, 60.4)).to eq 49.1
    end

    #Subtração

    it(' subtrair dois números inteiros') do
        expect(calculadora.subt(7, 3)).to eq 4
    end

    it(' subtrair dois números inteiros sendo o primeiro seja menor') do
        expect(calculadora.subt(8, 10)).to eq -2
    end

    it(' subtrair um número inteiro por zero') do
        expect(calculadora.subt(8, 0)).to eq 8
    end    

    it(' subtrair um número inteiro negativo por zero') do
        expect(calculadora.subt(-8, 6)).to eq -14
    end 

    it(' subtrair dois número inteiros negativos') do
        expect(calculadora.subt(-70, -20)).to eq -50
    end

    it(' subtrair dois número inteiros negativos sendo o primeiro menor') do
        expect(calculadora.subt(-4, -12)).to eq 8
    end

    it('subtrair um número inteiro positivo com um número interiro negativo') do
        expect(calculadora.subt(17,-2)).to eq 19
    end

    it('subtrair um número inteiro negativo com um número interiro positivo') do
        expect(calculadora.subt(-30, 20)).to eq -50
    end

    it(' subtrair dois números flutuantes') do
        expect(calculadora.subt(102.3, 50.3)).to eq 52
    end

    it(' subtrair dois números flutuantes sendo o primeiro número menor') do
        expect(calculadora.subt(15.5, 20.6)).to eq -5.1
    end
    #Multiplicação
    it(' multiplicar dois números inteiros') do
        expect(calculadora.mult(12, 11)).to eq 132
    end    

    it(' multiplicar dois números inteiros negativos') do
        expect(calculadora.mult(-13, -9)).to eq 117
    end 

    it(' multiplicar um número inteiro positivo por um número inteiro negativo') do
        expect(calculadora.mult(14, -3)).to eq -42
    end 

    it(' multiplicar um número inteiro negativo por zero') do
        expect(calculadora.mult(-20, 0)).to eq 0
    end 

    it(' multiplicar 0 por um número inteiro') do
        expect(calculadora.mult(0, 1000)).to eq 0
    end     

    it(' multiplicar um número inteiro por zero') do
        expect(calculadora.mult(12, 0)).to eq 0
    end 

    it(' multiplicar dois números flutuantes') do
        expect(calculadora.mult(70.5, 12.3)).to eq 867.2
    end   

    it(' multiplicar dois números flutuantes negativos') do
        expect(calculadora.mult(-70.5, -23.5)).to eq 1656.8
    end 

    it(' multiplicar um número flutuante negativo por 0') do
        expect(calculadora.mult(-70.5, 0)).to eq 0
    end
    #divisão
    it('dividir dois números inteiros') do
        expect(calculadora.div(48, 6)).to eq 8
    end

    it('dividir dois números inteiros negativos') do
        expect(calculadora.div(-60, -20)).to eq 3
    end

    it('dividir um número inteiro positivo por um número inteiro negativo') do
        expect(calculadora.div(-102, 6)).to eq -17
    end

    it(' dividir 0 por um número inteiro') do
        expect(calculadora.div(0, 10)).to eq 0 

    end

    it(' dividir dois números flutuantes') do
        expect(calculadora.div(52.5, 3.2)).to eq 16.4
    end

    it(' dividir dois números flutuantes negativos') do
        expect(calculadora.div(-52.5, -3.2)).to eq 16.4
    end

    it('dividir um número flutuante positivo por um número flutuante negativo') do
        expect(calculadora.div(52.5, -3.2)).to eq -16.4
    end

    it('Não deve dividir nenhum número por 0') do
        expect(calculadora.div(3, 0)).to eql "erro"
    end
    # raiz quadrada 
    it('Mostrar a raiz quadrada de um número inteiro') do
        expect(calculadora.quad(16)).to eq 4
    end

    it('Mostrar a raiz quadrada de um número flutuante') do
        expect(calculadora.quad(20.3)).to eq 4.5
    end

    it(' apresetar a raiz quadrada de um número inteiro negativo') do
        expect(calculadora.quad(-70)).to eql "erro"
    end

    it(' apresetar a raiz quadrada de um número fluante negativo') do
        expect(calculadora.quad(-100.1)).to eql "erro"
    end
end