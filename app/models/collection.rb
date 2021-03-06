class Collection < ActiveRecord::Base
  attr_accessible :abstract, :access_restrictions, :accrual_info, :acquisition_date, :acquisition_method, :acquisition_source, :alt_extent_statement, :appraisal_info, :arrangement, :biog_hist, :biog_hist_author, :classification_id, :collection_identifier, :custodial_history, :descpriptive_rules_id, :enabled, :extent, :extent_unit_id, :finding_aid_author, :finding_language_id, :inclusive_dates, :material_type_id, :normal_date_begin, :normal_date_end, :orig_copies_note, :orig_copies_url, :other_note, :other_url, :physical_access, :predominant_dates, :preferred_citation, :processing_info, :publication_date, :publication_note, :related_materials, :related_materials_url, :related_publications, :repository_id, :revision_history, :scope, :separated_materials, :sort_title, :technical_access, :title, :use_restrictions
  has_many :collection_contents
  belongs_to :classification
  has_one :collection_creator_relationship
  has_one :collectionLocationEntry
  has_many :digitalContents
  has_many :resarchCarts
  has_many :research_appointment_materials
end
