.class public Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/WinPrizeResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public winPrizeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/shake/info/WinPrizeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/CommonResult;-><init>()V

    return-void
.end method
