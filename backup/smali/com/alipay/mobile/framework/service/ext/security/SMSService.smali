.class public abstract Lcom/alipay/mobile/framework/service/ext/security/SMSService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isCanUseSim()Z
.end method

.method public abstract sendSms(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;)V
.end method

.method public abstract serviceProvider(Landroid/content/Context;)Ljava/lang/String;
.end method
