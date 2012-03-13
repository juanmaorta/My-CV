class Candidate
	name = ''
	surname = ''
	gender = 'female'
	email = ''
	mobile =''
	photo = ''

	birth_date = new Date()
	city_of_birth = ''
	country_of_birth = ''
	city_of_residence = ''
	country_of_residence = ''
	studies = []
	prof_experience = []
	skills = []
	projects = []

	constructor: (@name, @surname, @gender, birth_date, @city_of_birth = '', @country_of_birth = '', @city_of_residence = '', @country_of_residence = '') ->
		@birth_date = new Date(birth_date)
		@studies = []
		@prof_experience = []
		@skills = []
		@projects = []

	setEmail: (email) ->
		@email = email

	getEmail: ->
		return @email

	setMobile: (phone) ->
		@mobile = phone

	getMobile: ->
		return @mobile

	getName: ->
		return @name

	getFullName: ->
		return "#{@name} #{@surname}"

	getAge: ->
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

	addStudy: (study) ->
		@studies.push(study)
		return false

	addExperience: (experience) ->
		@prof_experiencie.push(experience)
		return false

	addSkill: (skill) ->
		@skills.push(skill)
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

	getSkills: ->
		if @skills.length <= 0
			return null
		else
			return @skills

	getProjects: ->
		if @projects.length <= 0
			return null
		else
			return @projects



class Study
	title = ''
	degree = ''
	year = new Date()
	center = ''

	constructor: (@title, @degree, year, @center) ->
		@year = new Date(year)

	getYear: ->
		return @year.getFullYear()


class Experience
	title = ''
	start_date = new Date()
	end_date = new Date()
	job_description = ''

	constructor: (@title, start_date, end_date, @job_description = '') ->
		@start_date = new Date(start_date)
		@end_date = new Date(end_date)

class Skill
	title = ''
	description = null

	constructor: (@title, @description = '') ->