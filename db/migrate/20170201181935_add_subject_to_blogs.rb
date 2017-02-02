class AddSubjectToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :subject, :string
  end
end
