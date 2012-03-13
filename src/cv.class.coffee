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

			# console.log @
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

	getAge: ->
		if @birth_date?
			today = new Date()
			age = today.getFullYear() - @birth_date.getFullYear()
			m = today.getMonth() - @birth_date.getMonth()
			
			if m < 0 or (m is 0 and today.getDate() < birthDate.getDate())
				age = age - 1
			return age

	getBirthInfo: ->
		info = "Born in #{@city_of_birth}, #{@country_of_birth} in #{@birth_date.getFullYear()}."
		if @gender is "female"
			info += " She "
		else
			info += " He "
		info += "is #{@getAge()}."
		return info

	getResidence: ->
		info = 'Lives in'
		if @city_of_residence isnt ''
			info += " #{@city_of_residence}"
		if @city_of_residence isnt '' and @country_of_residence isnt ''
			info += ", #{@country_of_residence}"
		else
			info += " #{@country_of_residence}"
		
		if info isnt 'Lives in'
			return info
		else
			return ""


	addUrl: (url) ->
		@other_urls.push(url)

	addStudy: (study) ->
		@studies.push(study)
		return false

	addExperience: (experience) ->
		@prof_experiencie.push(experience)
		return false

	###
	addSkill: (skill) ->
		@skills.push(skill)
		return false
	###


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

	###
	getSkills: ->
		if @skills.length <= 0
			return null
		else
			return @skills
	###

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

class Experience
	period = ''
	position = ''
	company = ''
	description = ''

	constructor: (@period, @position, @company, @description) ->

###
class Skill
	title = ''
	description = null

	constructor: (@title, @description = '') ->
###