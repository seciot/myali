.class public Lcom/alipay/publiccore/client/req/GlobalRecommendReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field private pageSize:I

.field private publicId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/publiccore/client/req/GlobalRecommendReq;->pageSize:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/req/GlobalRecommendReq;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/publiccore/client/req/GlobalRecommendReq;->pageSize:I

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/req/GlobalRecommendReq;->publicId:Ljava/lang/String;

    return-void
.end method
