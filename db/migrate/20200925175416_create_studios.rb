class CreateStudios < ActiveRecord::Migration[6.0]
    def change
        create_table :studios, id: :uuid do |t|
            t.string :name
            t.string :img
            t.text :description
            t.string :street_address
            t.string :city
            t.string :state
            t.string :zip_code
            t.string :neighborhood
            t.float :longitude
            t.float :latitude
            t.integer :guests
            t.integer :price
            t.string :amenities, array: true
        end
    end
end
