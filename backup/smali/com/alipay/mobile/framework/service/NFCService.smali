.class public abstract Lcom/alipay/mobile/framework/service/NFCService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disableAlipayNfc(Landroid/content/Context;)V
.end method

.method public abstract disableForegroundDispatch(Landroid/app/Activity;)V
.end method

.method public abstract enableAlipayNfc(Landroid/content/Context;)V
.end method

.method public abstract enableForegroundDispatch(Landroid/app/Activity;)V
.end method

.method public abstract getNFCBizProcessorManager()Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;
.end method

.method public abstract hasFeatureNfc(Landroid/content/Context;)Z
.end method

.method public abstract isAlipayNfcEnable(Landroid/content/Context;)Z
.end method

.method public abstract isNfcEnable(Landroid/content/Context;)Z
.end method

.method public abstract registerNFCMsgSender(Landroid/app/Activity;)V
.end method

.method public abstract setNdefPushMessage(Landroid/app/Activity;)V
.end method
