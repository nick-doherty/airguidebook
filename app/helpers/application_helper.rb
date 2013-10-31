module ApplicationHelper
  def authentication_menu
    # Build a list of links depending on the user's permissions.
    links = ""
    if @authenticated.present?
      links += "<li>#{ link_to('Edit Profile', edit_user_path(@authenticated) )}</li>"
      links += "<li>#{ link_to('Logout ' + @authenticated.name, login_path, :method => 'delete',
                      :confirm => 'Are you sure?') }</li>"
      if @authenticated.houses.length > 0
        links += "<li>#{ link_to('Build Guidebook!', house_path(@authenticated.houses.first.id) )}</li>"
        links += "<li>#{ link_to('Delete and Start Again', house_path(@authenticated.houses.first.id), :method => 'delete',
                      :confirm => 'Are you sure?') }</li>"
      end
    else
      links += "<li>#{ link_to('Home', root_path) }</li>"
      links += "<li>#{ link_to('Login', login_path) }</li>"
    end

    links
  end
end