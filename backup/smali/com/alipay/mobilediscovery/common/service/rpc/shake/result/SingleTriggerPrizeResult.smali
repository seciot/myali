.class public Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/SingleTriggerPrizeResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public prizeInfo:Lcom/alipay/mobilediscovery/common/service/rpc/shake/info/ShakePrizeInfo;

.field public thisProviderName:Ljava/lang/String;

.field public tipsInfo:Lcom/alipay/mobilediscovery/common/service/rpc/shake/info/ShakeTipsInfo;

.field public triggerPrizeCode:Ljava/lang/String;

.field public winPrizeInfo:Lcom/alipay/mobilediscovery/common/service/rpc/shake/info/WinPrizeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/CommonResult;-><init>()V

    const-string/jumbo v0, "F"

    iput-object v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/SingleTriggerPrizeResult;->triggerPrizeCode:Ljava/lang/String;

    return-void
.end method
