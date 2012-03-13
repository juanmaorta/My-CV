candidate = new Candidate()

candidate.loadJSON(mycv)

displayPersonalInfo = (el, cand) ->
	if el? and cand?
		el.html ""
		###
		el.append "<h2>Personal info</h2>"
		el.append "<p>#{cand.getFullName()}</p>"
		el.append("<p>" + cand.getBirthInfo() + "</p>")
		el.append("<p>" + cand.getResidence() + "</p>")
		el.append("<p><a href=\"mailto:"+ cand.getEmail()+"\">" + cand.getEmail() + "</a></p>")
		el.append("<p>" + cand.getMobile() + "</p>")
		###

displayAcademicInfo = (el, cand) ->
	if el? and cand?
		el.html ""
		el.append "<h2>Academic info</h2>"

		studies = cand.getStudies()
		for acad in studies
			el.append "<h3>#{acad.center} - #{acad.getYear()}</h3>"
			el.append "<p>#{acad.title}</p>"
			el.append "<p></p>"

displayProfesionalInfo = (el, cand) ->
	if el? and cand?
		el.html ""
		el.append "<h2>Professional info</h2>"

		exp = cand.getExperience()
		if exp?
			el.append "<p>#{exp.length()}</p>"
		else
			el.append "<p>Sorry, but #{cand.getName()} has no experience</p>"

displayTechnicalSkills = (el, cand) ->
	if el? and cand?
		el.html ""
		el.append "<h2>Technical skills</h2>"
		
		items = cand.getSkills()
		if items?
			el.append "<p>#{items.length()}</p>"
		else
			el.append "<p>Sorry, but #{cand.getName()} has no technical skills</p>"

displayProjects = (el, cand) ->
	if el? and cand?
		el.html ""
		el.append "<h2>My Projects</h2>"

		items = cand.getProjects()
		if items?
			el.append "<p>#{items.length()}</p>"
		else
			el.append "<p>Sorry, but #{cand.getName()} has no projects</p>"

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
