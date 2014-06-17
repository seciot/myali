.class public Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/FixedProductInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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

.field public button:Ljava/lang/String;

.field public byShares:Z

.field public detailTips:Ljava/lang/String;

.field public duringNum:Ljava/lang/String;

.field public duringTips:Ljava/lang/String;

.field public duringUnit:Ljava/lang/String;

.field public expireType:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public maxAmount:D

.field public minAmount:D

.field public onSaleCount:D

.field public productCode:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public productImg:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public profitRate:Ljava/lang/String;

.field public proportion:F

.field public publishInfo:Ljava/lang/String;

.field public publishInst:Ljava/lang/String;

.field public publishName:Ljava/lang/String;

.field public raiseTimeTips:Ljava/lang/String;

.field public rateShowType:I

.field public rateType:Ljava/lang/String;

.field public remainDayTips:Ljava/lang/String;

.field public remainDays:Ljava/lang/String;

.field public showPublishInst:Z

.field public soldOrder:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public unitPrice:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
