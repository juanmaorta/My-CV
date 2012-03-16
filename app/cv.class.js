var Candidate, Experience, Language, PersonalUrl, Project, Study;

Candidate = (function() {
  var age, birth_date, city_of_birth, city_of_residence, country_of_birth, country_of_residence, email, gender, languages, mobile, name, other_urls, personal_skills, photo, prof_experience, projects, studies, surname, tech_skills, web;

  name = '';

  surname = '';

  gender = 'female';

  birth_date = new Date();

  city_of_birth = '';

  country_of_birth = '';

  city_of_residence = '';

  country_of_residence = '';

  photo = '';

  age = 0;

  email = '';

  mobile = '';

  web = '';

  other_urls = [];

  studies = [];

  languages = [];

  prof_experience = [];

  tech_skills = [];

  personal_skills = [];

  projects = [];

  function Candidate() {
    this.other_urls = new Array();
    this.studies = new Array();
    this.languages = new Array();
    this.prof_experience = new Array();
    this.tech_skills = Array();
    this.personal_skills = Array();
    this.projects = Array();
  }

  Candidate.prototype.loadJSON = function(json) {
    var exp, key, language, myurl, obj, proj, study, url, value, _i, _j, _k, _l, _len, _len2, _len3, _len4, _len5, _m, _ref, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _results;
    if (json != null) {
      if (json.personal_data != null) {
        _ref = json.personal_data;
        for (key in _ref) {
          value = _ref[key];
          if (key === "birth_date") {
            this.birth_date = new Date(value);
            this.setAge();
          } else {
            this[key] = value;
          }
        }
      }
      if (json.contact_info != null) {
        _ref2 = json.contact_info;
        for (key in _ref2) {
          value = _ref2[key];
          if (key !== "other_urls") {
            this[key] = value;
          } else {
            _ref3 = json.contact_info.other_urls;
            for (_i = 0, _len = _ref3.length; _i < _len; _i++) {
              url = _ref3[_i];
              myurl = new PersonalUrl(url);
              this.addUrl(myurl);
            }
          }
        }
      }
      if ((json.studies != null) && json.studies.length > 0) {
        _ref4 = json.studies;
        for (_j = 0, _len2 = _ref4.length; _j < _len2; _j++) {
          study = _ref4[_j];
          obj = new Study(study);
          this.addStudy(obj);
        }
      }
      if ((json.languages != null) && json.languages.length > 0) {
        _ref5 = json.languages;
        for (_k = 0, _len3 = _ref5.length; _k < _len3; _k++) {
          language = _ref5[_k];
          obj = new Language(language);
          this.addLanguage(obj);
        }
      }
      if ((json.professional_experience != null) && json.professional_experience.length > 0) {
        _ref6 = json.professional_experience;
        for (_l = 0, _len4 = _ref6.length; _l < _len4; _l++) {
          exp = _ref6[_l];
          obj = new Experience(exp);
          this.addExperience(obj);
        }
      }
      if ((json.tech_skills != null) && json.tech_skills.length > 0) {
        this.tech_skills = json.tech_skills;
      }
      if ((json.projects != null) && json.projects.length > 0) {
        _ref7 = json.projects;
        _results = [];
        for (_m = 0, _len5 = _ref7.length; _m < _len5; _m++) {
          proj = _ref7[_m];
          obj = new Project(proj);
          _results.push(this.addProject(obj));
        }
        return _results;
      }
    } else {
      return alert("No JSON file provided");
    }
  };

  Candidate.prototype.setEmail = function(email) {
    return this.email = email;
  };

  Candidate.prototype.getEmail = function() {
    return this.email;
  };

  Candidate.prototype.setMobile = function(phone) {
    return this.mobile = phone;
  };

  Candidate.prototype.getMobile = function() {
    return this.mobile;
  };

  Candidate.prototype.getName = function() {
    return this.name;
  };

  Candidate.prototype.getFullName = function() {
    return "" + this.name + " " + this.surname;
  };

  Candidate.prototype.calcAge = function() {
    var m, today;
    if (this.birth_date != null) {
      today = new Date();
      age = today.getFullYear() - this.birth_date.getFullYear();
      m = today.getMonth() - this.birth_date.getMonth();
      if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age = age - 1;
      }
      return age;
    }
  };

  Candidate.prototype.setAge = function(birth) {
    return this.age = this.calcAge();
  };

  Candidate.prototype.addUrl = function(url) {
    return this.other_urls.push(url);
  };

  Candidate.prototype.addStudy = function(study) {
    this.studies.push(study);
    return false;
  };

  Candidate.prototype.addLanguage = function(lang) {
    this.languages.push(lang);
    return false;
  };

  Candidate.prototype.addExperience = function(experience) {
    this.prof_experience.push(experience);
    return false;
  };

  Candidate.prototype.addProject = function(project) {
    this.projects.push(project);
    return false;
  };

  Candidate.prototype.getStudies = function() {
    if (this.studies.length <= 0) {
      return null;
    } else {
      return this.studies;
    }
  };

  Candidate.prototype.getExperience = function() {
    if (this.prof_experience.length <= 0) {
      return null;
    } else {
      return this.prof_experience;
    }
  };

  Candidate.prototype.getProjects = function() {
    if (this.projects.length <= 0) {
      return null;
    } else {
      return this.projects;
    }
  };

  return Candidate;

})();

PersonalUrl = (function() {
  var name, url;

  name = '';

  url = '';

  function PersonalUrl(obj) {
    this.name = obj.name;
    this.url = obj.url;
  }

  return PersonalUrl;

})();

Study = (function() {
  var center, city, period, title;

  title = '';

  center = '';

  period = '';

  city = '';

  function Study(obj) {
    this.title = obj.title;
    this.center = obj.center;
    this.period = obj.period;
    this.city = obj.city;
  }

  return Study;

})();

Language = (function() {
  var lang_name, level;

  lang_name = '';

  level = '';

  function Language(obj) {
    this.lang_name = obj.lang_name;
    this.level = obj.level;
  }

  return Language;

})();

Experience = (function() {
  var company, description, period, position;

  period = '';

  position = '';

  company = '';

  description = '';

  function Experience(obj) {
    this.period = obj.period;
    this.position = obj.position;
    this.company = obj.company;
    this.description = obj.description;
  }

  return Experience;

})();

Project = (function() {
  var description, duties, name, url;

  name = '';

  url = '';

  description = '';

  duties = '';

  function Project(obj) {
    this.name = obj.name;
    this.url = obj.url;
    this.description = obj.description;
    this.duties = obj.duties;
  }

  return Project;

})();
