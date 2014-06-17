.class Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string/jumbo v0, "1801"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->a(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;->bindPhone(Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "1802"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->c(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->b(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000038"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "1803"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)Lcom/alipay/android/widget/security/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/a/d;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "700"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    const-string/jumbo v2, "tel:95188"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;->b:Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->e(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)V

    goto :goto_0
.end method
