module uim.mvc.tests.view;

@safe:
import uim.mvc;

void testMVCView(DMVCView aView, string viewName) { 
  assert(aView, "View "~viewName~" does not exist");
  assert(aView.name("testName").name == "testName", "View "~viewName~" could not change name");
  assert(aView.parameters(["a":"b"])["a"] == "b", "View "~viewName~" could set parameter 'a'");
  assert(aView.parameter("c", "d")["c"] == "d", "View "~viewName~" could set parameter 'c'");
}