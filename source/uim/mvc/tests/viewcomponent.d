module uim.mvc.tests.viewcomponent;

@safe:
import uim.mvc;

void testMVCViewComponent(DMVCViewComponent aViewComponent, string viewcomponentName) { 
  assert(aViewComponent, "ViewComponent "~viewcomponentName~" does not exist");
  assert(aViewComponent.name("testName").name == "testName", "ViewComponent "~viewcomponentName~" could not change name");
  assert(aViewComponent.parameters(["a":"b"])["a"] == "b", "ViewComponent "~viewcomponentName~" could set parameter 'a'");
  assert(aViewComponent.parameter("c", "d")["c"] == "d", "ViewComponent "~viewcomponentName~" could set parameter 'c'");
  assert(cast(DMVCViewComponent)MVCViewComponent, "ViewComponent "~viewcomponentName~" couldn't cast to DMVCViewComponent");
  assert(cast(IMVCViewComponent)MVCViewComponent, "ViewComponent "~viewcomponentName~" couldn't cast to DMVCViewComponent");
}