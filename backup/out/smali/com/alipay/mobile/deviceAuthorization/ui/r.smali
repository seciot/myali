.class final Lcom/alipay/mobile/deviceAuthorization/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final BindPhoneResult(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iput-boolean v2, v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->d:Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->v(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->w(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Confirming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-boolean v1, v1, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a:Z

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v2, v2, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v3}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->o(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v4, v4, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/r;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->x(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
