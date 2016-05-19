class AccountsController < ApplicationController
  def index
    authenticate_user!
    accounts = current_user.accounts
    render json: accounts
  end

  def total
    total = 0
    current_user.accounts.each do |account|
      total += account.amount
    end
    render json: total
  end
end
