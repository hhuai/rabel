class AddFromSrcToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :from_src, :string
    add_column :topics, :hidden,   :boolean, default: false
  end
end
