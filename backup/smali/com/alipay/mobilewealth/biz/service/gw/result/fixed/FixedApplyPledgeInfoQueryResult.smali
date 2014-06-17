.class public Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyPledgeInfoQueryResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public assetId:Ljava/lang/String;

.field public charge:Z

.field public maxPledgeAmount:D

.field public maxPledgeAmountTips:Ljava/lang/String;

.field public minPledgeAmount:D

.field public passwordType:Ljava/lang/String;

.field public tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
