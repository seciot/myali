.class public Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;
.super Ljava/lang/Object;


# instance fields
.field public nextPage:I

.field public pageCount:I

.field public queryTransType:Ljava/lang/String;

.field public timeRange:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->timeRange:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->nextPage:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->pageCount:I

    return-void
.end method


# virtual methods
.method public getNextPage()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->nextPage:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->pageCount:I

    return v0
.end method

.method public getQueryTransType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->queryTransType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->timeRange:Ljava/lang/String;

    return-object v0
.end method

.method public setNextPage(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->nextPage:I

    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->pageCount:I

    return-void
.end method

.method public setQueryTransType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->queryTransType:Ljava/lang/String;

    return-void
.end method

.method public setTimeRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListReq;->timeRange:Ljava/lang/String;

    return-void
.end method
