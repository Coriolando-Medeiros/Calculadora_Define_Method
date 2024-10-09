class Calculadora
    attr_accessor :a, :b
    [:somar, :subtrair, :multiplicar, :dividir].each do |operacao|
        define_method operacao do |a, b|
            if operacao.to_s == "somar"
                soma = a + b
                puts "Soma: #{soma}"
            elsif operacao.to_s == "subtrair"
                subtrair = a - b
                puts "Subtração: #{subtrair}"
            elsif operacao.to_s == "multiplicar"
                multiplica = a * b
                puts "Multiplicação: #{multiplica}"
            elsif operacao.to_s == "dividir"
                if b.zero?
                    puts "Erro: divisão por zero"
                else
                     divide = a / b
                    puts "Divisão: #{divide}"
                end
            end
        end
    end
end
