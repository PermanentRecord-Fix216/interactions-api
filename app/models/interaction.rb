class Interaction < ActiveRecord::Base
  scope :by_officer_name, -> (name) { where(officer_name: name) }
  scope :by_zip_code, -> (zip) { where(zip_code: zip) }
  scope :by_reporter_race, -> (race) { where(reporter_race: race) }
  scope :by_reporter_sex, -> (sex) { where(reporter_sex: sex) }

  scope :by_date, -> (start_date,end_date) { where("created_at > ? AND created_at < ?", start_date, end_date) }
end
