.class final Lcom/alipay/mobile/security/authcenter/ui/login/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;ZLandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/p;->c:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/p;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/p;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/p;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/p;->c:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/p;->c:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->c(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)Lcom/alipay/mobile/framework/service/common/SchemeService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/p;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/p;->c:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "isValidScheme"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
