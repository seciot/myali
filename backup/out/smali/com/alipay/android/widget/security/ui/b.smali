.class final Lcom/alipay/android/widget/security/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/b;->a:Lcom/alipay/android/widget/security/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/b;->a:Lcom/alipay/android/widget/security/ui/a;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/a;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;->logout()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/b;->a:Lcom/alipay/android/widget/security/ui/a;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/a;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
