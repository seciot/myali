.class public abstract Lcom/alipay/mobile/framework/service/ext/security/MobileSmsCheckService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract autoReadSmsCheckCode(Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;)V
.end method

.method public abstract downSms(Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract notifyCallBack(ILjava/lang/String;)V
.end method

.method public abstract sendBigShowSmsCheck(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;)V
.end method

.method public abstract sendCommonSmsCheck(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;)V
.end method
