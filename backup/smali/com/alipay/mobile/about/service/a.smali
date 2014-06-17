.class public final Lcom/alipay/mobile/about/service/a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;",
        ">;"
    }
.end annotation


# static fields
.field protected static a:Z


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/about/service/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p1, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/service/a;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method private varargs a()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;
    .locals 4

    const/4 v2, 0x1

    sget-boolean v0, Lcom/alipay/mobile/about/service/a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d\u65b0\u7248\u672c\u5ba2\u6237\u7aef"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->d:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const-class v2, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    invoke-static {}, Lcom/alipay/mobile/about/service/m;->a()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->setUserId(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-interface {v0, v2}, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;->versionUpdateCheck(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->h:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/about/service/a;->a()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/about/service/m;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->i:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getNewestVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->l:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->k:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/mobile/about/service/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const/4 v1, 0x0

    new-instance v4, Lcom/alipay/mobile/about/service/b;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/about/service/b;-><init>(Lcom/alipay/mobile/about/service/a;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V

    new-instance v6, Lcom/alipay/mobile/about/service/c;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/about/service/c;-><init>(Lcom/alipay/mobile/about/service/a;)V

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
