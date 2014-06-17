.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundFreezeDetailQueryReq;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentPage:I

.field public freezeType:Ljava/lang/String;

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundFreezeDetailQueryReq;->currentPage:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundFreezeDetailQueryReq;->pageSize:I

    return-void
.end method
