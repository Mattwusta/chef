class PagesController < ApplicationController
	http_basic_authenticate_with name: "manage", password: "steviematt", except: [:_home, :faq, :account, :return, :dish1, :dish2, :dish3, :give, :how, :know, :list, :menu, :privacy, :search, :service, :shop, :why, :cancel]

def home
end

def admin
end

def why
end

def service
end

def privacy
end

def faq
end

def shop
end

def menu
end

def dish1
end

def dish2
end

def dish3
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