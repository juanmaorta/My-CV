# top level namespacing
myApp = myApp or {}

myApp = 
	displayIdInfo: (el, cand, append = false) ->
		if el? and cand?
			template = $("#id_info").html()
			@.renderView(template, el, cand, append)

	displayPersonalInfo: (el, cand, append = false) ->
		if el? and cand?
			template = $("#personal_info").html()
			@.renderView(template, el, cand, append)


	displayAcademicInfo: (el, cand, append = false) ->
		if el? and cand?
			template = $("#academic_info").html()
			@.renderView(template, el, cand, append)

	displayProfesionalInfo: (el, cand, append = false) ->
		if el? and cand?
			template = $("#professional_info").html()
			@.renderView(template, el, cand, append)

	displayTechnicalSkills: (el, cand, append = false) ->
		if el? and cand?
			template = $("#technical_skill_info").html()
			@.renderView(template, el, cand, append)


	displayProjects: (el, cand, append = false) ->
		if el? and cand?
			template = $("#project_info").html()
			@.renderView(template, el, cand, append)

	renderView:(template, el, cand, append = false) ->
			html = Mustache.to_html(template, cand)
			if append
				el.append html
			else
				el.html html

	printerView: (el, cand) ->
		append = true

		@.displayPersonalInfo(el, cand)
		@.displayAcademicInfo(el, cand, append)
		@.displayProfesionalInfo(el, cand, append)
		@.displayTechnicalSkills(el, cand, append)
		@.displayProjects(el, cand, append)