class Api::V1::ArrivalsController < Api::ApplicationController
  def create
    list_user = params[:users]
    user_arrive = []
    list_user.each do |user|
        user_f = User.find_by(identification: user)
        if user_f
            arrive = user_f.arrivals.new
            if arrive.save
                user_arrive << user_f
            end
        end
    end
    render json: user_arrive
    end
end
