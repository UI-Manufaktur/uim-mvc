module uim.mvc.views.components.tables.components.headers.header;

@safe:
import uim.mvc;

class DMVCTableHeader : DMVCTableComponent {
  mixin(ViewComponentThis!("MVCTableHeader"));

  mixin(OProperty!("STRINGAA[]", "cols"));

  
  override DH5Obj[] toH5(STRINGAA options = null) { // hook
    super.toH5(options);
    if (hasError || "redirect in options") { return null; }

    DH5Obj[] ths;
    foreach(col; cols) {
      auto th = H5Td;
      if ("classes" in col) { th.classes([col["classes"]]); }
      if ("id" in col) { th.id(col["id"]); }
      if ("name" in col) { th.attribute("name", col["name"]); }
      if ("display" in col) { th(col["display"]); }
      if ("content" in col) { th(col["content"]); }
      ths ~= th;
    }

    return [H5Thead.row(ths)].toH5;
  }
}
mixin(ViewComponentCalls!("MVCTableHeader"));
