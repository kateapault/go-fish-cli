def start_menu
    TTY::Prompt.new
    logo
    logged_in = false
    until logged_in
        start_action = prompt.select('',["Log In","Sign Up","About"])
        case start_action
        when "Log In"
            # username = prompt.ask("Username: ")
        when "Sign Up"
            signup
        when "About"
        end
        username = prompt.ask("Enter ")
    end
    user
end

def user_menu

end

def settings_menu

end

def pause
    puts 'press enter to continue'
    gets
    system('clear')
end

def signup
    prompt = TTY::Prompt.new
    unique_username = false
    until unique_username
        username = prompt.ask("Choose username: ")
        if User.all.find { |u| u.name == username }
            puts "Oops! Looks like that username's already taken. Try a different one!"
        else
            unique_username = true
        end
    end
    pw_match = false
    until pw_match
        pw = prompt.mask("Enter password: ")
        pw2 = prompt.mask("Confirm password: ")
        if pw == pw2
            pw_match = true
        else
            puts "Oops! Passwords are different. Please try again!"
        end
    end
    User.create(name:username,password:pw)
end