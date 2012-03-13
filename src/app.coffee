mycv = new Candidate(
	"Juanma"
	"Orta"
	"male"
	"1969-10-10"
	"Terrassa (Barcelona)"
	"Spain"
	"Barcelona"
	"Spain")

mycv.setEmail("juanma.orta@gmail.com")
mycv.setMobile("+34 629 519 854");

biology = new Study("Biology", "Unv", "1993", "UAB")
arch = new Study("Software Architecture", "Unv", "2003", "UOC")

mycv.addStudy(biology)
mycv.addStudy(arch)

showPersonal = (el, cv) ->
	if el? and cv?
		el.html ""
		el.append "<h2>Personal info</h2>"
		el.append "<p>#{cv.getFullName()}</p>"
		el.append("<p>" + cv.getBirthInfo() + "</p>")
		el.append("<p>" + cv.getResidence() + "</p>")
		el.append("<p><a href=\"mailto:"+ cv.getEmail()+"\">" + cv.getEmail() + "</a></p>")
		el.append("<p>" + cv.getMobile() + "</p>")

showAcademic = (el, cv) ->
	if el? and cv?
		el.html ""
		el.append "<h2>Academic info</h2>"

		studies = cv.getStudies()
		for acad in studies
			el.append "<h3>#{acad.center} - #{acad.getYear()}</h3>"
			el.append "<p>#{acad.title}</p>"
			el.append "<p></p>"


showProfessional = (el, cv) ->
	if el? and cv?
		el.html ""
		el.append "<h2>Professional info</h2>"

		exp = cv.getExperience()
		if exp?
			el.append "<p>#{exp.length()}</p>"
		else
			el.append "<p>Sorry, but #{cv.getName()} has no experience</p>"

showTech = (el, cv) ->
	if el? and cv?
		el.html ""
		el.append "<h2>Technical skills</h2>"
		
		items = cv.getSkills()
		if items?
			el.append "<p>#{items.length()}</p>"
		else
			el.append "<p>Sorry, but #{cv.getName()} has no technical skills</p>"

showProjects = (el, cv) ->
	if el? and cv?
		el.html ""
		el.append "<h2>My Projects</h2>"

		items = cv.getProjects()
		if items?
			el.append "<p>#{items.length()}</p>"
		else
			el.append "<p>Sorry, but #{cv.getName()} has no projects</p>"

