class CreateShortenUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shorten_urls do |t|
      t.string :url
      t.string :url_shorten

      t.timestamps
    end
  end
end
