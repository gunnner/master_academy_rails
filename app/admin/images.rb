ActiveAdmin.register Image do
  permit_params :imageable_type, :imageable_id, :url

  index do
    selectable_column
    id_column
    column :imageable_id
    column :imageable_type
    column :url
    column :created_at
    column :updated_at
    # column :current_sign_in_at
    # column :sign_in_count
    actions
  end

  filter :imageable_id, label: 'imageable id'
  filter :imageable_type
  filter :url
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :imageable_id, label: 'Imageable ID'
      f.input :imageable_type
      f.input :url, label: 'URL'
    end
    f.actions
  end

end
