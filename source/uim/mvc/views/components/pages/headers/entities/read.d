module uim.mvc.views.components.pages.headers.entities.read;

@safe:
import uim.mvc;

class DMVCReadPageHeaderViewComponent : DMVCPageHeaderViewComponent {
  mixin(MVCViewComponentThis!("MVCReadPageHeaderViewComponent"));
  
  override DH5Obj[] toH5(STRINGAA options) {
    // debug writeln(StyledString("DMVCReadPageHeaderViewComponent/toH5").setForeground(AnsiColor.green).setBackground(AnsiColor.lightBlue));

    auto id = entity ? entity.id.toString : UUID().toString;
    return
      [H5Div(["page-header d-print-none"], 
        BS5Row(["row align-items-center"])
        .col(["col"], 
          H5Div("pageBreadcrumbs", [BreadcrumbsStyle], breadcrumbs),
          H5H2(["page-title"], titleView(title)))
        .col(["col-auto ms-auto d-print-none"], 
          H5Div(["btn-list"], 
            H5Span(["d-none d-sm-inline g-2"], 
              buttonLinkRefresh(rootPath, id),
              buttonLinkList(rootPath),
              buttonLinkCreate(rootPath, ["me-1"]),
              buttonLinkEdit(rootPath, id, ["me-1"]),
              buttonLinkDelete(rootPath, id)
            )
          )
        )
      )];
  }
}
mixin(MVCViewComponentCalls!("MVCReadPageHeaderViewComponent", "DMVCReadPageHeaderViewComponent"));
