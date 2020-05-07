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

end
