candidate = new Candidate()

candidate.loadJSON(mycv)

displayPersonalInfo = (el, cand) ->
	if el? and cand?
		template = $("#personal_info").html()
		# console.log template
		html = Mustache.to_html(template, cand)
		el.html html

displayAcademicInfo = (el, cand) ->
	if el? and cand?
		template = $("#academic_info").html()
		# console.log template
		html = Mustache.to_html(template, cand)
		el.html html
		###
		el.append "<h2>Academic info</h2>"

		studies = cand.getStudies()
		for acad in studies
			el.append "<h3>#{acad.center} - #{acad.getYear()}</h3>"
			el.append "<p>#{acad.title}</p>"
			el.append "<p></p>"
		###
displayProfesionalInfo = (el, cand) ->
	if el? and cand?
		template = $("#professional_info").html()
		# console.log template
		html = Mustache.to_html(template, cand)
		el.html html


displayTechnicalSkills = (el, cand) ->
	if el? and cand?
		template = $("#technical_skill_info").html()
		# console.log template
		html = Mustache.to_html(template, cand)
		el.html html


displayProjects = (el, cand) ->
	if el? and cand?
		template = $("#project_info").html()
		# console.log template
		html = Mustache.to_html(template, cand)
		el.html html


###
mycand = new Candidate(
	"Juanma"
	"Orta"
	"male"
	"1969-10-10"
	"Terrassa (Barcelona)"
	"Spain"
	"Barcelona"
	"Spain")

mycand.setEmail("juanma.orta@gmail.com")
mycand.setMobile("+34 629 519 854");

biology = new Study("Biology", "Unv", "1993", "UAB")
arch = new Study("Software Architecture", "Unv", "2003", "UOC")

mycand.addStudy(biology)
mycand.addStudy(arch)

###
