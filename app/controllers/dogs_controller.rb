class DogsController < ApplicationController
    def index
        @dogs=Dog.all
    end
    def show
        @dog=Dog.find(params[:id])
    end

    def most_popular
        @dogs = Dog.all.sort_by{|dog| -dog.employees.count}
        render :index
    end
end
