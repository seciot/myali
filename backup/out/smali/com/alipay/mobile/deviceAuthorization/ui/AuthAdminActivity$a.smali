.class final Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;->removeAuth(Ljava/lang/String;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->dismissProgressDialog()V

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a([Ljava/lang/String;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    check-cast p1, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    const-string/jumbo v1, "\u670d\u52a1\u5668\u6570\u636e\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->toast(Ljava/lang/String;I)V

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/mobile/deviceAuthorization/ui/b;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/b;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
