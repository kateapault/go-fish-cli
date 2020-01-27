require 'tty-prompt'

def start_menu
    prompt = TTY::Prompt.new
    # display main menu
    logged_in = false
    until logged_in
        system('clear')
        logo
        action = prompt.new('',"Log In","Sign Up","About","Exit")
        case action
        when "Log In"
            user = login
            logged_in = true
        when "Sign Up"
            user = signup
            logged_in = true
        when "About"
            # display About page
        when "Exit"
            puts "Thank you for stopping by!"
            system('abort')
        end
    end
    user
end

def login
    valid_user = false
    until valid_user
        username = prompt.ask("Username: ")
        if user = User.all.find { |u| u.name == username }
            valid_user = true
        else
            puts "Error: username not found. Please try again."
            puts "--press enter to continue--"
            gets
            system('clear')
        end
    end
    valid_pw = false
    until valid_pw
        pw = prompt.mask("Password: ")
        if user.password == pw
                valid_pw = true
        else
            puts "Error: incorrect password. Please try again."
            puts "--press enter to continue--"
            gets
            system('clear')
        end
    end
    user
end


def signup
    prompt = TTY::Prompt.new
    unique_username = false
    until unique_username
        username = prompt.ask("Please enter a username: ")
        if User.all.find { |u| u.name == username }
            puts "Sorry, that username is taken. Please pick another."
        else
            unique_username = true
        end
    end
    pw_match = false
    until pw_match
        pw = prompt.mask("Enter password: ")
        pw2 = prompt.mask("Confirm password: ")
        pw == pw2 ? (pw_match = true) : puts "Error: passwords do not match. Please try again."
    end
    new_user = User.create(name:username,password:pw)
end