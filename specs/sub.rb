require 'rspec'
require_relative '../logic/calculadora'

describe('Calculo de subtração') do 
    
    calculadora = Calculadora.new

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
        expect(calculadora.subt(-70, -20)).to eq -90
    end

    it(' subtrair dois número inteiros negativos sendo o primeiro menor') do
        expect(calculadora.subt(-4, -12)).to eq -16
    end

    it('subtrair um número inteiro positivo com um número interiro negativo') do
        expect(calculadora.subt(17,-2)).to eq 14
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

end