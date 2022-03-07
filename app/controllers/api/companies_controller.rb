class Api::CompaniesController < ApplicationController

before_action :set_company, only: [:show, :update, :destroy]

def index
    render json: Company.all
end

def show
    redner json: @company
end

def create
    @company = Company.new(companies_params)
        if(@company.save)
            render json: @company
        else 
            render json: {errors: @company.errors.full_messages}, status: 422
        end
end

def update
    if(@company.update(companies_params))
        render json: @company
    else
        render json: {errors: @company.errors.full_messages}, status: 422
    end
end

def destroy
    render json: @artist.destroy
end


private

def companies_params
    params.require(:company).permit(:ceo, :worth)
end

def set_company
    @company = Company.find(params[:id])
end




end
