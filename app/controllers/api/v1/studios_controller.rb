module Api 
    module V1 
        class StudiosController < ApplicationController
            def index
                studios = Studio.all
                if studios
                    render json: {status: "Complete", message: "Loaded studios", data: studios }
                else 
                    render json: {status: 500, errors: ["studios not found"]}
                end
            end
        end
    end
end
