def what_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux tu ?"
    print ">"
    nb_etages = gets.chomp
    nb_etages = nb_etages.to_i
    return nb_etages
end

def what_pyramid_odd
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux tu ? (choisis un nombre impair)"
    print ">"
    nb_etages = gets.chomp
    nb_etages = nb_etages.to_i
        if nb_etages.even? == true
            puts "Raté, c'est un nombre pair 🤔"
            nb_etages=0
        end
    return nb_etages
end

def half_pyramid (nb_etages)
    pyram = Array.new
    nb_etages.times do |i|
        pyram [nb_etages - i - 1] = "X"
        nb_etages.times do |i|
            if pyram [i] == nil
                pyram [i] = ' '
            end
        end
        puts "#{pyram.join}"
    end
end

def full_pyramid (nb_etages)
    pyram = Array.new
    nb_etages.times do |i|
        pyram [nb_etages - i] = "X"
        pyram [nb_etages + i] = "X"
        nb_etages.times do |i|
            if pyram [i] == nil
                pyram [i] = ' '
            end
        end
        puts "#{pyram.join}"
    end
end

def full_pyramid_reverse (nb_etages)
    pyram = Array.new
    height = (nb_etages + 1)/2
    nb_etages.times do |i| 
        if i < height
            pyram [height - i] = "X"
            pyram [height + i] = "X"
        else i > height
            pyram [height - (nb_etages - i)] = " "
            pyram [height + (nb_etages - i)] = " "
        end

        height.times do |i|
            if pyram [i] == nil
                pyram [i] = ' '
            end
        end
        puts "#{pyram.join}"
    end
end

nb_etages = what_pyramid_odd
full_pyramid_reverse (nb_etages)