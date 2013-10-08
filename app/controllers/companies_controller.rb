class CompaniesController < ApplicationController
  def new
  	@company = Company.new
  end

  def create
  	@company = Company.new(company_params)
  	if @company.save
  		flash[:success] = "save successfull"
		redirect_to @company
  	else
  		flash[:error] = "save un-successfull"
  		render 'new'
  	end		
  end

  def edit
  	@company = Company.find(params[:id])
  end

  def update
  	@company = Company.find(params[:id])
  	if @company.update_attributes(company_params)
  		flash[:success] = "save successfull"
		redirect_to @company
  	else
  		flash[:error] = "save un-successfull"
  		render 'edit'
  	end		
  end

  def show
  	@company = Company.find(params[:id])
  end

  def index
  	@companies = Company.paginate(page: params[:page])
  end

  def destroy
  	Company.find(params[:id]).destroy
  end

  def company_params
  	params.require(:company).permit(:registeredName,:registeredAddress, :email, :vatNumber)
  end
end

