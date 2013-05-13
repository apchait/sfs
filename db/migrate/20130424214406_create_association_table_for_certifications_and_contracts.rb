class CreateAssociationTableForCertificationsAndContracts < ActiveRecord::Migration
  def change
      create_table :certifications_contracts do |t|
          t.integer :contract_id
          t.integer :certification_id
      end
    end
end
