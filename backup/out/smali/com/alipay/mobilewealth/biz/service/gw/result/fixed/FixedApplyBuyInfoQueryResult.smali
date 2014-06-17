.class public Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyBuyInfoQueryResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channelInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/common/RecommendChannelInfo;

.field public guideTips:Ljava/lang/String;

.field public maxAmount:D

.field public maxAmountTips:Ljava/lang/String;

.field public minAmount:D

.field public minAmountTips:Ljava/lang/String;

.field public productInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/FixedProductInfo;

.field public riskTips:Ljava/lang/String;

.field public shareTips:Ljava/lang/String;

.field public tips:Ljava/lang/String;

.field public userAgreementInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/UserAgreementInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
