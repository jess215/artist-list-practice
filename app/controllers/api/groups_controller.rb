class Api::GroupsController < ApplicationController

    class Api::GroupsController < ApplicationController

        before_action :set_company
        before_action :set_group, only: [:show, :update, :destory]
        
        def index
            render json: @company.groups.all
        end
        
        private
        
        def groups_params
            params.require(:name).permit(:members, :debuted)
        end
        
        def set_company
            @company = Company.find(params[:company_id])
        end
        
        def set_group
            @group = @company.groups.find(params[:id])
        end
        
    end

end
