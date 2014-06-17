.class final Lcom/alipay/mobile/security/authcenter/ui/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/aj;->c:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/aj;->a:Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/aj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aj;->c:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/aj;->a:Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/aj;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment_;Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;Ljava/lang/String;)V

    return-void
.end method
