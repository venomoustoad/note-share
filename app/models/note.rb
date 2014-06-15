class Note < ActiveRecord::Base
  def self.basic_search(note)
    #Note.find_by_name(note) || Note.find_by_category_subject(note) || Note.find
    Note.where( 'notes.id = ? AND lower(code) LIKE ? OR course_certs.education_provider_id = ? AND lower(title) LIKE ?', current_user.education_provider_id, "%#{params[:course_wizard_search]}%".downcase.strip, current_user.education_provider_id, "%#{params[:course_wizard_search]}%".downcase.strip)
  end
end
