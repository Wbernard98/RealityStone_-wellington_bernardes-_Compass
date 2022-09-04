require 'rspec'
require_relative '../logic/calculadora'

describe('Calculo de divisão') do 
    
    calculadora = Calculadora.new

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
end