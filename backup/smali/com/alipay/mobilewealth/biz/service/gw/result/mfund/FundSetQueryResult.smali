.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundSetQueryResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public fundAssetChangeNoticeSet:Lcom/alipay/mobilewealth/core/model/models/mfund/FundAssetChangeNoticeSet;

.field public fundAutoTransferInSet:Lcom/alipay/mobilewealth/core/model/models/mfund/FundAutoTransferInSet;

.field public fundTotalAmountHiddenSet:Lcom/alipay/mobilewealth/core/model/models/mfund/FundTotalAmountHiddenSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
