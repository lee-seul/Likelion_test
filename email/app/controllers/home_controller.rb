class HomeController < ApplicationController
    def index

    end

    def write

        new_post = Post.new
        new_post.title = params[:title]
        new_post.person = params[:person]
        new_post.content = params[:content]
        new_post.save

        redirect_to "/list"
    end

    def list
        @every_post = Post.all.order("id desc")
    end
end
