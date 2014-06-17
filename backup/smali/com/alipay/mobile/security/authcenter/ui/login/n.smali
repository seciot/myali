.class final Lcom/alipay/mobile/security/authcenter/ui/login/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/n;->b:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/n;->b:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/n;->b:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    goto :goto_0
.end method
