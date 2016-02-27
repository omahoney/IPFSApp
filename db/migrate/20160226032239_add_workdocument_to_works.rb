class AddWorkdocumentToWorks < ActiveRecord::Migration
  def change
    add_attachment :works, :work_document
  end
end
