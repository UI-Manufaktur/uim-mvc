module uim.mvc.mixins.layout;

@safe:
import uim.mvc;

string mvcLayoutThis(string name) {
  return
    mvcBaseThis(name);
}

template MVCLayoutThis(string name) {
  const char[] MVCLayoutThis = mvcLayoutThis(name);
}

string mvcLayoutCalls(string shortName, string className) {
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

template MVCLayoutCalls(string shortName, string className) {
  const char[] MVCLayoutCalls = mvcLayoutCalls(shortName, className);
}
