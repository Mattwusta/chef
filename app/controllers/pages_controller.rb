class PagesController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "mattenzo", except: [:home, :learnvideos, :fruit, :dish4, :dish5, :dish6, :about, :side, :line, :help, :dogood, :lovemeal, :doogood, :hunger,:delivery, :donations, :_home, :faq, :account, :return, :dish1, :dish2, :dish3, :give, :how, :know, :list, :menu, :privacy, :search, :service, :shop, :why, :cancel]

def home
end

def admin
end

def about
end

def why
end

def line
end

def delivery
end

def donations
end

def lovmeal
end

def service
end

def privacy
end

def faq
end

def fruit
end

def shop
end

def hunger
end

def learnvideos
end

def dogood
end

def menu
end

def dish1
end

def dish2
end

def dish3
end

def dish4
end

def dish5
end

def dish6
end

def side
end

def lovemeal
end

def help
end

def how
end

def know
end

def give
end 

def account
end 

def return
end 

end