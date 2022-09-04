require 'rspec'
require_relative '../logic/calculadora'

describe('Calculo de raiz quadrada') do 
    
    calculadora = Calculadora.new

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