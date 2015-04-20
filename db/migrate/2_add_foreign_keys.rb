
    class AddForeignKeys < ActiveRecord::Migration
    def change
        change_table :movies do |t|
            t.references :user
            t.references :review
        end
        change_table :reviews do |t|
          t.references :movie
          t.references :user
        end
    end
end