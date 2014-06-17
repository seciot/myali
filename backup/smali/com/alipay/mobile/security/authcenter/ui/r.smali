.class final Lcom/alipay/mobile/security/authcenter/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/r;->b:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/r;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/r;->b:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/r;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;Landroid/os/Bundle;)V

    return-void
.end method
