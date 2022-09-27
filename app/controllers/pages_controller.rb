class PagesController < ApplicationController

	def about
	end

	def contact
	end

  #individual pages:
  def bibit
    if user_signed_in? and current_user.admin
      @posts = Post.where(:owner => 'Bianchini').minimal_view.order('id').reverse_order
    else
      @posts = Post.where(:owner => 'Bianchini').minimal_view.published.order('id').reverse_order
    end
  end

  def henry
    if user_signed_in? and current_user.admin
      @posts = Post.where(:owner => 'Love').minimal_view.order('id').reverse_order
    else
      @posts = Post.where(:owner => 'Love').minimal_view.published.order('id').reverse_order
    end
  end

end