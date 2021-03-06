class AddActivityIndexes < ActiveRecord::Migration[4.2]
	def self.up
		add_index :journals, :created_on
		add_index :wiki_content_versions, :updated_on
		add_index :messages, :created_on
		add_index :issues, :created_on
		add_index :attachments, :created_on
		add_index :documents, :created_on
	end

	def self.down
		remove_index :journals, :created_on
		remove_index :wiki_content_versions, :updated_on
		remove_index :messages, :created_on
		remove_index :issues, :created_on
		remove_index :attachments, :created_on
		remove_index :documents, :created_on
	end
end
