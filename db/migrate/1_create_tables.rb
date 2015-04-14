class CreateTables < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end



    create_table :movies do |t|
      t.string :name 
      t.string :genre
      t.integer :movie_year
      t.string :lead_actor 
      t.references :poster
      t.time :duration
      t.string :rating
       #Your code goes here
      t.timestamps
    end

    create_table :reviews do |t|
      # Your code goes here
      t.string :description
      t.integer :number_reviews
      t.integer :avg_rating_tomatometer
      t.timestamps
    end


  end

end
