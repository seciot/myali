.class final Lcom/alipay/mobile/security/authcenter/ui/regist/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/app/MicroApplication;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/b;->c:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/b;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/b;->c:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/b;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->a(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method
