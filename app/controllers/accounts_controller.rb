class AccountsController < ApplicationController
	def index
		@accountChecking = Account.where(accountType: "Checking")
		@accountSaving = Account.where(accountType: "Saving")
		@accountCash = Account.where(accountType: "Cash")
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new(account_params)
		if @account.save
			flash[:sucsess] = "Account added successfully"
			redirect_to :action => "index"
		else
			render 'new'
		end		
	end

	def account_params
		params.require(:account).permit(:bankName, :accountType, :accountBalance)
	end
end
