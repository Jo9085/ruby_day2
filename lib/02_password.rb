def signup
    puts "Cher utilisateur, merci de définir un mot de passe"
    md_passe = gets.chomp
    return md_passe
end

def login (md_passe)
    ident = ""
    puts "Merci de rentrer ton mot de passe"
    ident = gets.chomp
    while ident != md_passe
        puts "Try again"
        ident = gets.chomp
    end
end

def welcome_screen
    puts "Bienvenue dans ta zone secrète !"
    puts "C'est le moment de découvrir ce que l'avenir te réserve..."
end

def perform
    md_passe = signup
    login (md_passe)
    welcome_screen
end

perform