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
        url: "http://linkd.in/JuanmaOrta"
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
      lang_name: "English",
      level: "very good"
    }, {
      lang_name: "French",
      level: "intermediate"
    }, {
      lang_name: "Spanish",
      level: "native"
    }, {
      lang_name: "Catalan",
      level: "native"
    }
  ],
  professional_experience: [
    {
      period: "2001 - present",
      company: "Ameba Interactiva SL",
      position: "Co-founder and CTO",
      description: "Ameba Interactiva it's the company behind Fotonatura.org, the main Spanish online community of nature photography.",
      duties: "Here I'm also part of the company's board of directors, so I take part in commercial and		strategical decisions. My other responsilibies include analysis, design and development of the application (back and front-end), system and database administrator and coordination with the freelance developers.",
      tech: "The website is in its 5th version, now with an enriched Ajax UI in most of the pages and extensive jQuery use. I'm rewritting the private backoffice as a 'single page app' using Backbone and jQuery.",
      url: "http://www.fotonatura.org"
    }, {
      period: "2006 - present",
      company: "Portafolionline.com",
      position: "Founder and main developer",
      description: "Portafolionline it's a specialized CMS for photography and art websites. It allows artists to 		create their own websites and showcase their work without effort.",
      duties: "This is one of my personal projects. In fact, it's the one that gets most of my heart and mind nowadays. Here I'm responsible of the development process, but also of hiring the right 		people for the right job. This can be a graphic designer, copywriter, front/back end developer. Most of them are remote workers, some working from as far as  		India.",
      url: "http://www.portafolionline.es"
    }, {
      period: "2006 - present",
      company: "Use Your Time SL",
      position: "CTO",
      description: "Use Your Time is an internet company specialized in online job boards. It's  main project is Yobalia.com, a job board		for people between 23 and 35 years.",
      duties: "My resposabilities here are mainly technical: analysis, design and development of front and backend apps, sysadmin of the server farm (now in 			collaboration with an external firm) and coordination with freelance designers and developers.",
      url: "http://www.yobalia.com"
    }, {
      period: "2000 - present",
      company: "Freelance",
      description: "During the last 12 years, I've also been working as a freelance front and back end developer for many independent 		customers. You can see some of the most relevant in the .displayProjects() section"
    }
  ],
  tech_skills: ["Javascript", "jQuery", "PHP", "Coffeescript", "CSS", "SASS/SCSS", "Java", "Smarty", "MySQL (SQL and admin)", "git", "Subversion", "Linux (Ubuntu, CentOS)", "OS X"],
  personal_skills: [],
  hobbies: [
    {
      name: "Photography",
      description: "I've been pressing the shutter for 28 years now, so if I had to choose the one and only hobby, that would be photography. It's my way to express myself and specially, what I feel when I'm in a natural enviroment.		Although I love all photography disciplines, nature photography is my fav, no doubt about it. And it's also a good excuse to travel and visit new places!",
      image: "./img/taking_photos.jpg"
    }, {
      name: "Scuba diving",
      description: "Think about visiting another planet. Think about flying. That's scuba diving. But it can be even better... just add a camera ;-)",
      image: "./img/scuba2.jpg"
    }, {
      name: "Jogging",
      description: "I don't know if it's a hobby or just a way of keeping sanity. Too many hours at the keyboard can be harsh. Go for a gentle run around the neighborhood and everything looks much better."
    }
  ],
  projects: [
    {
      name: "Orenetes.cat",
      url: "http://www.orenetes.cat",
      description: "One of those one in a lifetime projects. Orenetes ('housemartins' in Catalan) its a project designed to bring ecology to people. It's subject is to track housemartins nests around Catalonia, but in fact		it makes people more conscious about their enviroment. It has an intensive Google Map's API use and also deep datamining to show maps, charts and reports. I love it because, years after obtaining my degree in biology, 		gave me the opportunity to apply some of my ecology knowledge in my new career."
    }, {
      name: "Naturapics",
      url: "http://galerie.naturapics.com",
      description: "Naturapics it's an spin-off project of Fotonatura. A friend of us thought it could be a nice idea to adapt our 		software platform to show the images of the French photographers. And we did it. Our tool appears as a subdomain of the main site... but it's where 		the beauty of French photography can be admired."
    }, {
      name: "Personalparatiendas.com",
      url: "http://www.personalparatiendas.com",
      description: "The younger bro of Yobalia, initially designed to hold retail job offers, now it's about to be incorporated to it's elder. Anyway I like it 		because it was one of my first successful 'table-less' layouts and I did a nice code refactorization, which after a few years, led to what Yobalia.com is now."
    }, {
      name: "Marques especials",
      url: "http://marques.ornitologia.org",
      description: "Another social ornithology job, in this case to track bird migration. Amateur ornithologist use this web-app to record their sightings and the gathered data is put together to allow		for a better understanding of the bird migration fenomenon. The site has a lot of Google Maps use, as well as mootools. 'Marques especials' means 'special tags' in Catalan."
    }, {
      name: "jquery.simple-plugins",
      url: "https://github.com/juanmaorta/JQuery-plugins",
      description: "A compendium of some jQuery plugins that I developped to use in my projects. Instead of loading heavy plugin libraries of which only a little part is used, 		I use this light script with the most used in my UIs."
    }
  ]
};
