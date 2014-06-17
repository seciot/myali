.class public Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/FixedAssetInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public assetCode:Ljava/lang/String;

.field public assetId:Ljava/lang/String;

.field public assetImg:Ljava/lang/String;

.field public assetMemo:Ljava/lang/String;

.field public assetName:Ljava/lang/String;

.field public assetStatus:Ljava/lang/String;

.field public bizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public canPledge:Z

.field public detailTips:Ljava/lang/String;

.field public duringNum:Ljava/lang/String;

.field public duringUnit:Ljava/lang/String;

.field public expireType:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public pledgeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/FixedPledgeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pledgeTips:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public profitInfo:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public profitInfoSpecial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public profitRate:Ljava/lang/String;

.field public publishInst:Ljava/lang/String;

.field public remainDays:Ljava/lang/String;

.field public remainDuringPercent:F

.field public showRedDot:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
