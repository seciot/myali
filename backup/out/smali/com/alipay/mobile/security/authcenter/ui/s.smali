.class final Lcom/alipay/mobile/security/authcenter/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/s;->a:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/s;->a:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/s;->a:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->finish()V

    return-void
.end method
