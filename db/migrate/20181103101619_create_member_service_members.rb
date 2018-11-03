class CreateMemberServiceMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :member_service_members do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
