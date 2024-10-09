class Calculadora
    attr_accessor :a, :b
    [:somar, :subtrair, :multiplicar, :dividir].each do |operacao|
        define_method operacao do |a, b|
            if operacao.to_s == "somar"
                soma = a + b
                puts "#{a} + #{b} = #{soma}"
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
    limpar_tela
    puts ""
    puts "Calculadora Simples"
    puts ""
    tempo(1)
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

        limpar_tela
        if escolha == 1
            limpar_tela
            puts "Somar"
            a, b = entradas
            limpar_tela
            calc.somar(a, b)
            puts "tecle Enter para Proseguir"
            gets
            limpar_tela
        elsif escolha == 2
            limpar_tela
            puts "Subtrair"
            a, b = entradas
            calc.subtrair(a, b)
            puts "tecle Enter para Proseguir"
            gets
            limpar_tela
        elsif escolha == 3
            limpar_tela
            puts "Multiplicar"
            a, b = entradas
            calc.multiplicar(a, b)
            puts "tecle Enter para Proseguir"
            gets
            limpar_tela
        elsif escolha == 4
            limpar_tela
            puts "Dividir"
            a, b = entradas
            calc.dividir(a, b)
            puts "tecle Enter para Proseguir"
            gets
            limpar_tela
        elsif escolha == 0
            puts "Saindo..."
            tempo(2)
            return
        else
            puts "Escolha inválida! Tente novamente"
        end
    end
end

menu