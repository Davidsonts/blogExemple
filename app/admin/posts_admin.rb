Trestle.resource(:posts) do
  menu do
    item :posts, icon: "fa fa-file-text"
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |post|
  #   text_field :name
  #
  #   row do
  #     col { datetime_field :updated_at }
  #     col { datetime_field :created_at }
  #   end
  # end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:post).permit(:name, ...)
  # end

  table do
    column :title
    # column :body
    column :data, align: :center
    column :state, align: :center do |post|
      status_tag(icon("fa fa-check"), :active) if post.state?
    end
    # column :user, align: :center
    # column :category, align: :center
    actions
  end

  form do |post|
    text_field :title, required: true 
    editor :body, required: true 
    date_field :data, required: true 
    select :state, [:active, :inactive], required: true 
    select :user_id, User.all, required: true 
    select :category_id, Category.all, required: true 
  end
end
