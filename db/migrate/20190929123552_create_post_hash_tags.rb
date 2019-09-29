class CreatePostHashTags < ActiveRecord::Migration[6.0]
  def change
    create_table :post_hash_tags, id: false do |t|
      t.belongs_to :post, index: true
      t.belongs_to :hash_tag, index: true

      t.timestamps
    end
  end
end
