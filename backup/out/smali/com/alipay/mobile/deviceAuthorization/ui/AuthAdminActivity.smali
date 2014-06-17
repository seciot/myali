.class public Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;,
        Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;,
        Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

.field private c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aW:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->b:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/deviceAuthorization/a/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/a/a;->getCount()I

    move-result v2

    if-lt p3, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/deviceAuthorization/a/a;->a(I)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$array;->a:I

    new-instance v4, Lcom/alipay/mobile/deviceAuthorization/ui/a;

    invoke-direct {v4, p0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/a;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
