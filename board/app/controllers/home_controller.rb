class HomeController < ApplicationController
    def index
        @posts = Post.all.order('id desc')
    end

    def write
    end

    def write_new
        post = Post.new(title: params[:title], content: params[:content])

        if post.save
            redirect_to '/'
        else
            render text: post.errors.messages
        end
    end
end
