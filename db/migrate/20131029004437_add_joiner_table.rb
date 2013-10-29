class AddJoinerTable < ActiveRecord::Migration
  def change
  	create_table :books_words, :id => false do |t|
  		t.integer :book_id
  		t.integer :word_id
  	end	
  end
end
