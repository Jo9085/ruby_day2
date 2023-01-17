def say_hello (firstname)
    puts "Bonjour, #{firstname}"
end

def ask_first_name
    puts "Quel est ton prénom ?"
    firstname = gets.chomp
    return firstname
end

firstname = ask_first_name
say_hello (firstname)