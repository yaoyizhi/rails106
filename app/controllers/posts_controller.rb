class PostsController < ApplicationController
    before_action :authenticate_user!

    def new
        @group = Group.find(params[:group_id])
        @post = Post.new
      end

    def create
        @group = Group.find(params[:group_id])
        @post = Post.new(post_params)
        @group.post = @group
        if @post.save
            redirect_to group_path(@group)
        else
            render :new
      end
  end
end
