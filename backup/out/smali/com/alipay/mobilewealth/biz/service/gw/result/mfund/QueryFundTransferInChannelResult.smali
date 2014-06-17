.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/QueryFundTransferInChannelResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channelInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/common/RecommendChannelInfo;

.field public expectProfitDate:Ljava/lang/String;

.field public profitDateAfter3PM:Ljava/lang/String;

.field public profitDateDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
