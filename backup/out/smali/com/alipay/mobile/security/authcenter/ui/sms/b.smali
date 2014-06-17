.class final Lcom/alipay/mobile/security/authcenter/ui/sms/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/b;->b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/b;->a:Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/b;->b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/b;->a:Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;)V

    return-void
.end method
