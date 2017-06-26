$("#cycle_workouts_attributes_<%=@element_id%>_exercise_id").empty()
  .append("<%= escape_javascript(render(:partial => @exercises)) %>")
