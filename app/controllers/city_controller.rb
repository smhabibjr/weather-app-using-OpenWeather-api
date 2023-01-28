class CityController < ApplicationController
  def index
    @all_country = CS.countries
    @state = CS.states("BD")

    cities = CS.get :bd, :e
    sdf = 1
    asdfasdf = 1
  end



  def create
    success_msg = []
    error_msg = []

    begin
      state = params[:country]
      state = params[:state]
      sdf = 1
      if params[:country].present?
        state = CS.states(params[:country])
        success_msg = state
        sadf = 21
      end

      if params[:selected_country].present? && params[:state].present?
        cities = CS.get params[:selected_country], params[:state]
        success_msg = cities

        fasdfasd = 12

      end



    rescue Exception => e
      error_msg.push(:error_msh => "Datensatz nicht erstellt.")
      puts e.to_s
    end


    if error_msg.length > 0
      # then render head not found
      render :status => :not_found, :json => error_msg
      asdf = 1
    else
      # otherwise send ok status
      render json: success_msg
      asdfa = 1
    end



  end

end
