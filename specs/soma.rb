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
        expect(calculadora.soma(-11.3, 60.4)).to eq 71.7
    end

    
    
end