.class final Lcom/alipay/android/widget/security/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;


# direct methods
.method private constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/e;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/e;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/e;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/e;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/e;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->d(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V

    goto :goto_0
.end method
