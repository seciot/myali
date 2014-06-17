.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenInfoV0Result;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public account:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public fundInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundInfo;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
