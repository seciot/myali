.class final Lcom/alipay/mobile/security/authcenter/ui/sms/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/j;->b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/j;->a:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/j;->b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/j;->a:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V

    return-void
.end method
