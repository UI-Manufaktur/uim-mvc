module uim.mvc.mixins.base;

@safe:
import uim.mvc;

string mvcBaseThis(string name) {
  return `
    this() { super(); this.name("`~name~`"); }
    this(DMVCApplication myApplication) { this().application(myApplication); }
    this(string myName) { this().name(myName); }
    this(string[string] myParameters) { this().parameters(myParameters); }

    this(DMVCApplication myApplication, string myName) { this(myApplication).name(myName); }
    this(DMVCApplication myApplication, string[string] myParameters) { this(myApplication).parameters(myParameters); }

    this(string myName, string[string] myParameters) { this(name).parameters(myParameters); }
    this(DMVCApplication myApplication, string myName, string[string] myParameters) { this(myApplication, name).parameters(myParameters); }

    override DMVCBase create() {
      return `~name~`;
    }
  `;
}

template MVCBaseThis(string name) {
  const char[] MVCBaseThis = mvcBaseThis(name);
}

string mvcBaseCalls(string shortName, string className) {
  return `
    auto `~shortName~`() { return new `~className~`; }
    auto `~shortName~`(DMVCApplication myApplication) { return new `~className~`(myApplication); }
    auto `~shortName~`(string myName) { return new `~className~`(myName); }
    auto `~shortName~`(string[string] myParameters) { return new `~className~`(myParameters); }

    auto `~shortName~`(string myName, string[string] myParameters) { return new `~className~`(myName, myParameters); }

    auto `~shortName~`(DMVCApplication myApplication, string myName) { return new `~className~`(myApplication, myName); }
    auto `~shortName~`(DMVCApplication myApplication, string[string] myParameters) { return new `~className~`(myApplication, myParameters); }
  `;
}

template MVCBaseCalls(string shortName, string className) {
  const char[] MVCBaseCalls = mvcBaseCalls(shortName, className);
}


