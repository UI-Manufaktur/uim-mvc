module uim.mvc.views.components.forms.crud.create;

@safe:
import uim.mvc;

class DMVCCreateForm : DEntityForm {
  mixin(MVCViewComponentThis!("MVCCreateForm"));

  override void initialize() {
    super.initialize;

    this
      .crudMode(CRUDModes.Create);
  }
}
mixin(MVCViewComponentCalls!("MVCCreateForm"));

/* 
auto createPageHeader(string path, string mainTitle, string subTitle) {
  return
    H5Div(["page-header d-print-none"], 
      BS5Row(["align-items-center"])
        .col(["col"], 
          H5Div("pageBreadcrumbs", [BreadcrumbsStyle], mainTitle),
          H5H2(["page-title"], "Create "~subTitle))
        .col(["col-auto ms-auto d-print-none"], 
          H5Div(["btn-list"], 
            H5Span(["d-none d-sm-inline"], 
              buttonLinkRefresh(path),
              buttonLinkList(path)
              )
            )
    ));
}

auto createForm(string path, string id, STRINGAA reqParameters) {
  return 
    H5Form("entity_create", ["card"], 
      createheader(path, id, reqParameters),
      MVCCreatebody_.path(path).id(id).toH5(reqParameters)
    );
}

auto createheader(string path, string id, STRINGAA reqParameters) {
  return 
    BS5CardHeader( 
      H5H4(["card-title me-auto"], "ID: "~id),
      H5Div(["btn-list"], 
        H5Span(["d-none d-sm-inline"], 
            resetClear,
            submitSave
          )
        )
      );
}



 */