class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render "index.json.jbuilder"    
  end

  def show
    @company = Company.find_by(id: params[:id])
    render "show.json.jbuilder"    
  end

  def create
    @company = Company.create(
      name: params[:name],
      catchphrase: params[:catchphrase],
      ein: params[:ein],
      logo: params[:logo]
    )
    render "show.json.jbuilder"
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.update(
      name: params[:name],
      catchphrase: params[:catchphrase],
      ein: params[:ein],
      logo: params[:logo]
    )
    render "show.json.jbuilder"
  end  

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    @companies = Company.all
    render json: {message: "Company successfully deleted."}
  end  
end
