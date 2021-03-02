ActiveAdmin.register Group do
  permit_params :name, :group_type, :status

  index do
    selectable_column
    id_column
    column :name
    column :group_type
    column :status
    column :created_at
    column :updated_at
    # column :current_sign_in_at
    # column :sign_in_count
    actions
  end

  filter :name
  filter :group_type
  filter :status
  filter :created_at
  filter :updated_at
  # filter :current_sign_in_at
  # filter :sign_in_count

  form do |f|
    f.inputs do
      f.input :name
      f.input :group_type
      f.input :status
    end
    f.actions
  end

end
