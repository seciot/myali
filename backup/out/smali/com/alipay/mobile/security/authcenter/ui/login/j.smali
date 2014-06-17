.class final Lcom/alipay/mobile/security/authcenter/ui/login/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/j;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 3

    const-string/jumbo v0, ""

    const-string/jumbo v1, "alipay"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/j;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    iget-object v2, v2, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/j;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/x;->b()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/j;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "taobao"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/j;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    iget-object v2, v2, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/j;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/x;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
