module PostsHelper
  def new_post; end

  def show_name(post)
    output = ''
    output << "<small> #{post.user.name} </small>" if user_signed_in?
    output.html_safe
  end
end
