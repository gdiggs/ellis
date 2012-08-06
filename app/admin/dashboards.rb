ActiveAdmin::Dashboards.build do

  section "Recent Users" do
    ul do
      User.find(:all, :order => "id desc", :limit => 10).collect do |user|
        li link_to(user.name, admin_user_path(user))
      end
    end
  end

end
