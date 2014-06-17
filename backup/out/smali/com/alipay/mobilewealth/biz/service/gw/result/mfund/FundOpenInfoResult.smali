.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenInfoResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/bank/BaseBankCard;",
            ">;"
        }
    .end annotation
.end field

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

.field public fundInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundInfo;

.field public fundUserInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundUserInfo;

.field public hasFundAccount:Z

.field public jumpIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
