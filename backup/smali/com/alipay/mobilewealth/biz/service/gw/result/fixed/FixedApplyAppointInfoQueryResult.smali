.class public Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyAppointInfoQueryResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appointAmount:D

.field public buttonText:Ljava/lang/String;

.field public categoryInstruction:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public categorys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/FixedCategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fundAmount:D

.field public guideText:Ljava/lang/String;

.field public maxAppointAmount:D

.field public maxProfitRate:D

.field public minAppointAmount:D

.field public minProfitRate:D

.field public needTransferIn:Z

.field public passwordType:Ljava/lang/String;

.field public profitRateText:Ljava/lang/String;

.field public suggestProfitRate:D

.field public tips:Ljava/lang/String;

.field public titleText:Ljava/lang/String;

.field public userAgreementInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/UserAgreementInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
