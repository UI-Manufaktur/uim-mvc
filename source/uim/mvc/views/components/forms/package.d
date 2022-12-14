module uim.mvc.views.components.forms;

@safe:
import uim.mvc;

// Main
public import uim.mvc.views.components.forms.form;

// Packages
public import uim.mvc.views.components.forms.components;
public import uim.mvc.views.components.forms.crud;

// Modules
public import uim.mvc.views.components.forms.login;
public import uim.mvc.views.components.forms.login2;


template FormThis(string name, bool withEntity = false, bool withEntities = false) {
  const char[] FormThis = `
this() { super(); this.name("`~name~`"); initialize; }
this(DMVCView myView) { this().view(myView); }
this(string myName) { this().name(myName); }
this(DMVCView myView, string myName) { this(myView).name(myName); }`~
(withEntity ? `
this(DOOPEntity myEntity) { this().entity(myEntity); }
this(DMVCView myView, DOOPEntity myEntity) { this(myView).entity(myEntity); }
this(string myName, DOOPEntity myEntity) { this(myName).entity(myEntity); }
this(DMVCView myView, string myName, DOOPEntity myEntity) { this(myView, myName).entity(myEntity); }
` : ``)~
(withEntities ? `
this(DOOPEntity[] myEntities) { this().entities(myEntities); }
this(DMVCView myView, DOOPEntity[] myEntities) { this(myView).entities(myEntities); }
this(string myName, DOOPEntity[] myEntities) { this(myName).entities(myEntities); }
this(DMVCView myView, string myName, DOOPEntity[] myEntities) { this(myView, myName).entities(myEntities); }
` : ``);
}

template FormCalls(string name, bool withEntity = false, bool withEntities = false) {
  const char[] FormCalls = `
auto `~name~`() { return new D`~name~`(); }
auto `~name~`(DMVCView myView) { return new D`~name~`(myView); }
auto `~name~`(string myName) { return new D`~name~`(myName); }
auto `~name~`(DMVCView myView, string myName) { return new D`~name~`(myView, myName); }`~
(withEntity ? `
auto `~name~`(DOOPEntity myEntity) { return new D`~name~`(myEntity); }
auto `~name~`(DMVCView myView, DOOPEntity myEntity) { return new D`~name~`(myView, myEntity); }
auto `~name~`(string myName, DOOPEntity myEntity) { return new D`~name~`(myName, myEntity); }
auto `~name~`(DMVCView myView, string myName, DOOPEntity myEntity) { return new D`~name~`(myView, myName, myEntity); }
` : ``)~
(withEntities ? `
auto `~name~`(DOOPEntity[] myEntities) { return new D`~name~`(myEntities); }
auto `~name~`(DMVCView myView, DOOPEntity[] myEntities) { return new D`~name~`(myView, myEntities); }
auto `~name~`(string myName, DOOPEntity[] myEntities) { return new D`~name~`(myName, myEntities); }
auto `~name~`(DMVCView myView, string myName, DOOPEntity[] myEntities) { return new D`~name~`(myView, myName, myEntities); }
` : ``);
}

