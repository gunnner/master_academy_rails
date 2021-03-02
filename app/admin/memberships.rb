ActiveAdmin.register Membership do
  permit_params :status, :group, :user_id

  index do
    selectable_column
    id_column
    column :status
    column 'User ID', :user_id
    column :user
    column 'Group ID', :group_id
    column :group
    column :created_at
    column :updated_at
    # column :current_sign_in_at
    # column :sign_in_count
    # column :group_id
    actions
  end

  filter :status
  filter :user_id, label: 'user id'
  filter :user
  filter :group
  filter :group_id, label: 'group id'
  filter :created_at
  filter :updated_at
  # filter :current_sign_in_at
  # filter :sign_in_count

  form do |f|
    f.inputs do
      f.input :status
      f.input :group
      f.input :user
    end
    f.actions
  end

end
