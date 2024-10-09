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

def entradas
    print "Número 1: "
    a = gets.chomp.to_f
    print "Número 2: "
    b = gets.chomp.to_f
    return a, b
end

def limpar_tela
    system('clear') || system('cls')
end

def tempo(segundos)
    segundos.times do |i|
        sleep(1)
    end
end

def menu
    puts ""
    puts "Calculadora Simples"
    puts ""
    calc = Calculadora.new
    loop do
        puts "=========menu========="
        puts "1 - Somar"
        puts "2 - Subtrair"
        puts "3 - Multiplicar"
        puts "4 - Dividir"
        puts "0 - Sair"
        print "Escolha: "

        escolha = gets.chomp.to_i

        if escolha == 1
            puts "Somar"
            a, b = entradas
            calc.somar(a, b)
        elsif escolha == 2
            puts "Subtrair"
            a, b = entradas
            calc.subtrair(a, b)
        elsif escolha == 3
            puts "Multiplicar"
            a, b = entradas
            calc.multiplicar(a, b)
        elsif escolha == 4
            puts "Dividir"
            a, b = entradas
            calc.dividir(a, b)
        elsif escolha == 0
            puts "Saindo..."
            return
        else
            puts "Escolha inválida! Tente novamente"
        end
    end
end

menu