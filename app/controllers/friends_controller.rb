class FriendsController < ApplicationController
    def create
        @friend = Friend.new(friend_params)
        # @person.save
        respond_to do |format|
            if @friend.save
                format.html { redirect_to(root_url, notice: 'Thank you for sharing!') }
                UserMailer.with(friend: @friend).friend_email.deliver_now
                UserMailer.with(friend: @friend).shared_email_consilium.deliver_now
            else
              format.html { render action: 'home' }
              print @friend.errors.full_messages
            end
        end
    end

    private

    def friend_params
        params.require('friend').permit(:name, :email, :message)
    end
end
