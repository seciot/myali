.class final Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;
    .locals 3

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;->getAllValidAuth()Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->a(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;)V

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->b()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a()Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    check-cast p1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->dismissProgressDialog()V

    invoke-static {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/d;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/d;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->a()Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->a()Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->a()Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;->getAuthModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const-string/jumbo v1, "\u6682\u65e0\u88ab\u6388\u6743\u7684\u5e94\u7528\u8bbe\u5907"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setNoAction()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->D:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->D:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/a/a;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->a()Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;->getAuthModels()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/mobile/deviceAuthorization/ui/c;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/c;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
