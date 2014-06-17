.class public final Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity_;
.super Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/t;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/t;-><init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->I:I

    invoke-super {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
