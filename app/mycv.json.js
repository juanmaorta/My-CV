/* 
	My CV
	This is a  mockup (to avoid loading data remotely) with real data for display
	in a HTML app to show my CV

	(c) 2012 - Juanma Orta
*/
var mycv;

mycv = {
  personal_data: {
    name: "Juanma",
    surname: "Orta",
    gender: "male",
    birth_date: "1969-10-10",
    city_of_birth: "Terrassa, Barcelona",
    country_of_birth: "Spain",
    city_of_residence: "Barcelona",
    country_of_residence: "Spain",
    photo: "./img/myself.jpg"
  },
  contact_info: {
    email: "juanma.orta@gmail.com",
    mobile: "+34 629 519 854",
    web: "http://www.juanmaorta.com",
    other_urls: [
      {
        name: "linkedin",
        url: "http://es.linkedin.com/in/juanmaorta"
      }, {
        name: "twitter",
        url: "http://twitter.com/#!/JuanmaOrta"
      }, {
        name: "github",
        url: "https://github.com/juanmaorta"
      }, {
        name: "facebook",
        url: "http://www.facebook.com/juanma.orta"
      }
    ]
  },
  studies: [
    {
      title: "Degree in Biology",
      center: "Universitat Autonoma de Barcelona",
      period: "1988-1993",
      city: "Barcelona (Spain)"
    }, {
      title: "Software Architecture",
      center: "Universitat Oberta de Catalunya",
      period: "2003-2005",
      city: "Non presential"
    }
  ],
  languages: [
    {
      lang_name: "Spanish",
      level: "native"
    }, {
      lang_name: "Catalan",
      level: "native"
    }, {
      lang_name: "English",
      level: "very good"
    }, {
      lang_name: "French",
      level: "intermediate"
    }
  ],
  professional_experience: [
    {
      period: "2006 - present",
      company: "Use Your Time SL",
      position: "CTO",
      description: "Duis et lorem sed dolor venenatis blandit eget in purus. Pellentesque habitant morbi tristique"
    }, {
      period: "2000 - present",
      company: "Ameba Interactiva SL",
      position: "Founder and main developper",
      description: ""
    }, {
      period: "2005 - present",
      company: "Portafolionline",
      position: "Founder and main developper",
      description: "Lorem ipsum, Duis et lorem sed dolor venenatis blandit eget in purus."
    }
  ],
  tech_skills: ["PHP", "Javascript", "Coffeescript", "CSS", "SASS/SCSS", "Java", "Actionscript", "git", "Subversion"],
  personal_skills: [],
  projects: [
    {
      name: "Fotonatura.org",
      url: "http://www.fotonatura.org",
      duties: "Main developper",
      description: "Vestibulum lobortis arcu et diam posuere sodales. Duis et lorem sed dolor venenatis blandit eget in purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam eget placerat orci. Pellentesque risus tellus, imperdiet eu hendrerit in, viverra eget neque. Pellentesque fermentum quam imperdiet elit ultricies vitae dignissim tortor interdum."
    }, {
      name: "Azafatayspromotoras.com",
      url: "http://www.azafatasypromotoras.com",
      description: "Dolor sit amet",
      duties: ""
    }, {
      name: "This very CV",
      url: "",
      description: "Dolor sit amet",
      duties: ""
    }
  ]
};
