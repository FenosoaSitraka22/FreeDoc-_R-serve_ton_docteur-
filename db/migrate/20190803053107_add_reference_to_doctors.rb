class AddReferenceToDoctors < ActiveRecord::Migration[5.2]
  def change
  	add_reference :doctors, :city, foreign_key: true
  	add_reference :doctors, :specialty, foreign_key: true
  end
end
