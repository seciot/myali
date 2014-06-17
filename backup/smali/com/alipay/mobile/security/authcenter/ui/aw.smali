.class final Lcom/alipay/mobile/security/authcenter/ui/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/aw;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/aw;->a:Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aw;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/aw;->a:Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;)V

    return-void
.end method
