module AssessmentsHelper

  def edit_path_by_type(assessment, client_id)
    case assessment.type
    when "Pollock3"
      edit_pollock3_path(assessment, client_id: client_id)
    else
      edit_assessment_path(assessment, client_id: client_id)
    end
  end

  def show_path_by_type(assessment, client_id)
    case assessment.type
    when "Pollock3"
      pollock3_path(assessment, client_id: client_id)
    else
      assessment_path(assessment, client_id: client_id)
    end
  end
end
