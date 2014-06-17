.class final Lcom/alipay/mobile/deviceAuthorization/ui/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ac;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ac;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000011"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
