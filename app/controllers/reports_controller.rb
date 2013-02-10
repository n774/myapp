class ReportsController < ApplicationController
  def index
    @reports = Group.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json:@reports }
    end
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
    @reports = Rate.find_by_sql(['select r.g_id, g.g_name,  r.rate_id, u1.u_name as rate_name,  r.brate_id, u2.u_name as brate_name, r.point, r.comment  from rates r inner join groups g on r.g_id = g.g_id inner join users u1 on r.rate_id = u1.u_id inner join users u2 on r.brate_id = u2.u_id  where r.g_id = ? order by brate_id', params[:id]])

    @lists = Rate.find_by_sql(['SELECT r.brate_id, u.u_name as brate_name FROM RATES r INNER JOIN USERS u ON u.u_id = r.brate_id where r.g_id = ? group by brate_id order by brate_id', params[:id]])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reports }
      format.json { render json: @lists }
    end
  end
end
