.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundHomeInfoResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fundAssetAccountInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundAssetAccountInfo;

.field public fundInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundInfo;

.field public fundProfitIntervalInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundProfitIntervalInfo;

.field public shareInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/core/model/models/common/ShareInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
