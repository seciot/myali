.class final Lcom/alipay/android/widget/security/service/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/h;->b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "login_entry"

    const-string/jumbo v2, "taobaoBinding"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "logonId"

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "allowBack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/service/h;->b:Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;

    #getter for: Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v1}, Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;->access$100(Lcom/alipay/android/widget/security/service/TaobaoBindingServiceImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000008"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method
