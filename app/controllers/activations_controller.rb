class ActivationsController < ApplicationController
  def edit
    user = User.find_by activation_code: params[:id]
    if user
      user.update_attributes activation_code: nil, activated_at: Time.zone.now
      user.activate!
      redirect_to login_path, notice: 'Account activated! Please sign in.'
    else
      redirect_to root_path, error: 'Invalid activation link'
    end
  end
end
