candidate = new Candidate()

candidate.loadJSON(mycv)

displayIdInfo = (el, cand) ->
	if el? and cand?
		template = $("#id_info").html()
		renderView(template, el, cand)

displayPersonalInfo = (el, cand) ->
	if el? and cand?
		template = $("#personal_info").html()
		renderView(template, el, cand)


displayAcademicInfo = (el, cand) ->
	if el? and cand?
		template = $("#academic_info").html()
		renderView(template, el, cand)

displayProfesionalInfo = (el, cand) ->
	if el? and cand?
		template = $("#professional_info").html()
		renderView(template, el, cand)

displayTechnicalSkills = (el, cand) ->
	if el? and cand?
		template = $("#technical_skill_info").html()
		renderView(template, el, cand)


displayProjects = (el, cand) ->
	if el? and cand?
		template = $("#project_info").html()
		renderView(template, el, cand)

renderView = (template, el, cand) ->
		html = Mustache.to_html(template, cand)
		el.html html