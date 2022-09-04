require 'rspec'
require_relative '../logic/calculadora'

describe('Calculo de multiplicação') do 
    
    calculadora = Calculadora.new
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
end