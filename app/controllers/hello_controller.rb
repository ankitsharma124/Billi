class HelloController < ApplicationController
    def helloworld
        render json: "Hello!"
    end
end
