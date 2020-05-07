class PeopleController < ApplicationController

    def index
        @people = Person.all
    end
    
    def home
        @person = Person.new
        # @secret = ENV['PASSWORD']
    end

    # def new
    # end

    def create
        @person = Person.new(person_params)
        # @person.save
        respond_to do |format|
            if @person.save
              format.html { redirect_to(root_url, notice: 'Thank you for signing up!') }
              UserMailer.with(person: @person).welcome_email.deliver_now
            else
              format.html { render action: 'home' }
              print @person.errors.full_messages
            end
        end
    end

    private

    def person_params
        params.require('person').permit(:first_name, :last_name, :email, :city, :recent_company, :current, :job_title, :expertise)
    end
end
