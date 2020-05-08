class UserMailer < ApplicationMailer
    # default from: 'velisjoel@gmail.com'

    def welcome_email
        @person = params[:person]
        email_with_name = %("#{@person.first_name}" <#{@person.email}>)
        # delivery_options = { 
        #                 user_name: params[:company].smtp_user,
        #                  password: params[:company].smtp_password,
        #                  address: params[:company].smtp_host }
        # mail(to: @person.email, subject: 'Welcome to Consilium Intelligence')
        mail(to: email_with_name, subject: 'Welcome to Consilium Intelligence')
    end

    def new_email_consilium
        @person = params[:person]
        mail(to: 'jvelis@consiliumintelligence.com', subject: 'Someone just registered for tech updates!')
    end

    def friend_email
        @friend = params[:friend]
        email_with_name = %("#{@friend.name}" <#{@friend.email}>)
        mail(to: email_with_name, subject: 'Your friend thought you would find us interesting')
    end

    def shared_email_consilium
        @friend = params[:friend]
        mail(to: 'jvelis@consiliumintelligence.com', subject: 'Someone just shared our link!')
    end
end
