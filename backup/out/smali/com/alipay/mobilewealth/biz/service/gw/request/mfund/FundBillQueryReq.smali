.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundBillQueryReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentPage:I

.field public filterCodition:Ljava/lang/String;

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundBillQueryReq;->currentPage:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundBillQueryReq;->pageSize:I

    return-void
.end method
