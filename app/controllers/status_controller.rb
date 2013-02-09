class StatusController < ApplicationController
  def show
   @groups = Rate.find_by_sql("select rates.g_id,users.u_name,rates.point from rates join users on rates.g_id = users.g_id")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @groups }
    end
  end
end  

