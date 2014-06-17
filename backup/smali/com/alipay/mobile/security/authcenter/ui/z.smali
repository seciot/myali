.class final Lcom/alipay/mobile/security/authcenter/ui/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/y;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/y;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/z;->a:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/z;->a:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->b(Lcom/alipay/mobile/login/bean/LoginInfo;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "T"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/z;->a:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/login/bean/LoginInfo;)V

    goto :goto_0
.end method
