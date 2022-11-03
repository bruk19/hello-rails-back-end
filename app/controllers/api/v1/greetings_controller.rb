module Api 
    module V1
        class GreetingsController < ApplicationController
            def index
                greeting = Greeting.all.sample.message
                render json: {status: 'SUCCESS', message: 'Loaded messages', data: greeting}, status: :ok
            end
        end
    end
end