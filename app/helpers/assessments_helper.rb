module AssessmentsHelper

  def edit_path_by_type(assessment, client_id)
    case assessment.type
    when "Pollock3"
      edit_pollock3_path(assessment, client_id: client_id)
    when "Pollock7"
      edit_pollock7_path(assessment, client_id: client_id)
    when "IcqAssessment"
      edit_icq_path(assessment, client_id: client_id)
    else
      edit_assessment_path(assessment, client_id: client_id)
    end
  end

  def show_path_by_type(assessment, client_id)
    case assessment.type
    when "Pollock3"
      pollock3_path(assessment, client_id: client_id)
    when "Pollock7"
      pollock7_path(assessment, client_id: client_id)
    when "IcqAssessment"
      icq_path(assessment, client_id: client_id)
    else
      assessment_path(assessment, client_id: client_id)
    end
  end

  def destroy_path_by_type(assessment, client_id)
    case assessment.type
    when "Pollock3"
      pollock3_path(assessment, client_id)
    when "Pollock7"
      pollock7_path(assessment, client_id)
    when "IcqAssessment"
      icq_path(assessment, client_id)
    else
      assessment_path(assessment, client_id)
    end
  end
end
