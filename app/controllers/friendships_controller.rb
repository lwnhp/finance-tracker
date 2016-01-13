class FriendshipsController < ApplicationController
    
    before_action :set_friendship, only: [:destroy]
    
    def destroy
        @friendship.destroy
          respond_to do |format|
          format.html { redirect_to my_friends_path, notice: 'Friend was successfully removed.' }
          end
    end
        
    private

    def set_friendship
     @friendship = current_user.friendships.where(friend_id: params[:id]).first # kijk hier goed naar!!
    end
    
end