ActiveAdmin.register Category do

  index do
    column :name
    column :slug
    column :id
    default_actions
  end



  sidebar "Category Details", only: [:show, :edit] do
    ul do
      li link_to("Articles", admin_category_articles_path(category))
    end
  end

end
