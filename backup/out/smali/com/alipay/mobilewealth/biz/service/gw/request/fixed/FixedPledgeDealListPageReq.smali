.class public Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedPledgeDealListPageReq;
.super Lcom/alipay/mobilewealth/common/service/facade/req/CommonPageReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public assetId:Ljava/lang/String;

.field public pledgeId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/req/CommonPageReq;-><init>()V

    return-void
.end method
