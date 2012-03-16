var candidate, displayAcademicInfo, displayIdInfo, displayPersonalInfo, displayProfesionalInfo, displayProjects, displayTechnicalSkills, printerView, renderView;

candidate = new Candidate();

candidate.loadJSON(mycv);

displayIdInfo = function(el, cand, append) {
  var template;
  if (append == null) append = false;
  if ((el != null) && (cand != null)) {
    template = $("#id_info").html();
    return renderView(template, el, cand, append);
  }
};

displayPersonalInfo = function(el, cand, append) {
  var template;
  if (append == null) append = false;
  if ((el != null) && (cand != null)) {
    template = $("#personal_info").html();
    return renderView(template, el, cand, append);
  }
};

displayAcademicInfo = function(el, cand, append) {
  var template;
  if (append == null) append = false;
  if ((el != null) && (cand != null)) {
    template = $("#academic_info").html();
    return renderView(template, el, cand, append);
  }
};

displayProfesionalInfo = function(el, cand, append) {
  var template;
  if (append == null) append = false;
  if ((el != null) && (cand != null)) {
    template = $("#professional_info").html();
    return renderView(template, el, cand, append);
  }
};

displayTechnicalSkills = function(el, cand, append) {
  var template;
  if (append == null) append = false;
  if ((el != null) && (cand != null)) {
    template = $("#technical_skill_info").html();
    return renderView(template, el, cand, append);
  }
};

displayProjects = function(el, cand, append) {
  var template;
  if (append == null) append = false;
  if ((el != null) && (cand != null)) {
    template = $("#project_info").html();
    return renderView(template, el, cand, append);
  }
};

renderView = function(template, el, cand, append) {
  var html;
  if (append == null) append = false;
  html = Mustache.to_html(template, cand);
  if (append) {
    return el.append(html);
  } else {
    return el.html(html);
  }
};

printerView = function() {};
