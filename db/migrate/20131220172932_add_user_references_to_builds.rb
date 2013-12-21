class AddUserReferencesToBuilds < ActiveRecord::Migration
  def change
    add_reference :builds, :user, index: true
  end
end
