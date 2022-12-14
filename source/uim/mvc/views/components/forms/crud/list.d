module uim.mvc.views.components.forms.crud.list;

@safe:
import uim.mvc;

class DMVCEntitiesListForm : DEntitiesForm {
  mixin(MVCViewComponentThis!("MVCEntitiesListForm", false, true));

  override void initialize() {
    super.initialize;

    this
      .header(
        FormHeader //.mainTitle("Blogs").subTitle("Übersicht Blogs").actions([["print", "export"]])
      )
      .content(
        EntitiesFormContent      
      );
    /*       .form
        .header(MVCEntitiesheader(this.form).rootPath("/cms/blogs").mainTitle("Blogs").subTitle("Blogs anzeigen").actions([["print", "export"]]))
        .body_(MVCListbody_(this.form).rootPath("/cms/blogs"));
 */
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DMVCEntitiesListForm~":DMVCEntitiesListForm("~this.name~")::toH5");
    super.toH5(options);
    
    DBS5Col _col = BS5Col(["col-12"]);
    _col(
      H5Form("Form", ["card"], ["method":method, "action":action], 
        this.header.toH5(options)~
        this.content.toH5(options)~
        this.footer.toH5(options) 
      ));
    
    return [_col].toH5;
  }  
}
mixin(MVCViewComponentCalls!("MVCEntitiesListForm", false, true));

version(test_uim_apps) { unittest {
    writeln("--- Test in ", __MODULE__, "/", __LINE__);
    
    assert(new DMVCEntitiesListForm);
    assert(MVCEntitiesListForm);
  }
}
