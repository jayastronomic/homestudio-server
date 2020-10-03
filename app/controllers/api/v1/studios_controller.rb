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

            def random
                studios = Studio.limit(6).order('RANDOM()')
                if studios
                    render json: {status: 'COMPLETED', studios: studios}
                else
                    render json: {status: 'INCOMPLETE', error: ["error"]}
                end
            end
        end
    end
end
