class AddDocumentoIdentidadToRelative < ActiveRecord::Migration[5.2]
  def change
    add_column :relatives, :documento_identidad, :string
  end
end
