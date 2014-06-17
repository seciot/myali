.class final Lcom/alipay/mobile/security/authcenter/ui/login/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

.field final synthetic d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field final synthetic e:Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->e:Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->c:Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    iput-object p5, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->e:Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->c:Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    iget-object v4, p0, Lcom/alipay/mobile/security/authcenter/ui/login/e;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;->a(Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method
