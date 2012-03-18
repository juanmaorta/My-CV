class Candidate
	name = ''
	surname = ''
	gender = 'female'
	birth_date = new Date()
	city_of_birth = ''
	country_of_birth = ''
	city_of_residence = ''
	country_of_residence = ''
	photo = ''
	age = 0

	email = ''
	mobile =''
	web = ''

	other_urls = []
	studies = []
	languages = []
	prof_experience = []
	tech_skills = []
	personal_skills = []
	projects = []

	constructor:  ->
		@other_urls = new Array()
		@studies = new Array()
		@languages = new Array()
		@prof_experience = new Array()
		@tech_skills = Array()
		@personal_skills = Array()
		@projects = Array()


	loadJSON: (json) ->
		if json?
			# load personal data
			if json.personal_data?
				for key, value of json.personal_data
					if key is "birth_date"
						@birth_date = new Date(value)
						@setAge()
					else
						@[key] = value
			
			# load contact info
			if json.contact_info?
				for key, value of json.contact_info
					if key isnt "other_urls"
						@[key] = value
					else
						for url in json.contact_info.other_urls
							myurl = new PersonalUrl(url)
							@addUrl(myurl)
			# load studies
			if json.studies? and json.studies.length > 0
				for study in json.studies
					obj = new Study(study)
					@addStudy(obj)

			# load languages
			if json.languages? and json.languages.length > 0
				for language in json.languages
					obj = new Language(language)
					@addLanguage(obj)

			# professional experience
			if json.professional_experience? and json.professional_experience.length > 0
				for exp in json.professional_experience
					obj = new Experience(exp)
					@addExperience(obj)

			if json.tech_skills? and json.tech_skills.length > 0
				@tech_skills = json.tech_skills

			if json.projects? and json.projects.length > 0
				for proj in json.projects
					obj = new Project(proj)
					@addProject(obj)

			# console.log @
		else
			alert "No JSON file provided"

	setEmail: (email) ->
		# set validation rules for email
		@email = email

	getEmail: ->
		return @email

	setMobile: (phone) ->
		# set validation rules for phone numbers
		@mobile = phone

	getMobile: ->
		return @mobile

	getName: ->
		return @name

	getFullName: ->
		return "#{@name} #{@surname}"

	calcAge: ->
		if @birth_date?
			today = new Date()
			age = today.getFullYear() - @birth_date.getFullYear()
			m = today.getMonth() - @birth_date.getMonth()
			
			if m < 0 or (m is 0 and today.getDate() < birthDate.getDate())
				age = age - 1
			return age

	setAge: (birth) ->
		@age = @calcAge()

	addUrl: (url) ->
		@other_urls.push(url)

	addStudy: (study) ->
		@studies.push(study)
		return false

	addLanguage: (lang) ->
		@languages.push(lang)
		return false

	addExperience: (experience) ->
		@prof_experience.push(experience)
		return false

	addProject: (project) ->
		@projects.push(project)
		return false

	getStudies: ->
		if @studies.length <= 0
			return null
		else
			return @studies


	getExperience: ->
		if @prof_experience.length <= 0
			return null
		else
			return @prof_experience


	getProjects: ->
		if @projects.length <= 0
			return null
		else
			return @projects


class PersonalUrl
	name = ''
	url = ''

	constructor: (obj) ->
		@name = obj.name
		@url = obj.url
class Study
	title = ''
	center = ''
	period = ''
	city = ''

	constructor: (obj) ->
		@title = obj.title 
		@center = obj.center
		@period = obj.period 
		@city = obj.city

class Language
	lang_name = ''
	level = ''

	constructor: (obj) ->
		@lang_name = obj.lang_name
		@level = obj.level

class Experience
	period = ''
	position = ''
	company = ''
	description = ''
	duties = ''

	constructor: (obj) ->
		@period = obj.period
		@position = obj.position
		@company = obj.company
		@description = obj.description
		@duties = obj.duties

class Project
	name = ''
	url = ''
	description = ''
	duties = ''

	constructor: (obj) ->
		@name = obj.name
		@url = obj.url
		@description = obj.description
		@duties = obj.duties

