class PagesController < ApplicationController

    def home
    end

    def privacy
    end

    def success 
    end

    def fail 
    end

    def create
        @contact = Contact.new(:name => params["name"], :email => params["email"], :phone => params["phone"], :message => params["message"])
        
        if @contact.save
            redirect_to pages_success_path
        else
            redirect_to pages_fail_path
        end
    end
end
