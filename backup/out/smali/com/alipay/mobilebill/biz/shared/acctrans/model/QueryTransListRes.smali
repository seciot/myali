.class public Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;
.super Ljava/lang/Object;


# instance fields
.field public bizResult:Lcom/alipay/mobile/framework/service/ext/BizResult;

.field public page:I

.field public pageCount:I

.field public totalCount:J

.field public transList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/acctrans/model/TransListVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->page:I

    return-void
.end method


# virtual methods
.method public getBizResult()Lcom/alipay/mobile/framework/service/ext/BizResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->bizResult:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->page:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->pageCount:I

    return v0
.end method

.method public getTotalCount()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->totalCount:J

    return-wide v0
.end method

.method public getTransList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/acctrans/model/TransListVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->transList:Ljava/util/List;

    return-object v0
.end method

.method public setBizResult(Lcom/alipay/mobile/framework/service/ext/BizResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->bizResult:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->page:I

    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->pageCount:I

    return-void
.end method

.method public setTotalCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->totalCount:J

    return-void
.end method

.method public setTransList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/acctrans/model/TransListVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/acctrans/model/QueryTransListRes;->transList:Ljava/util/List;

    return-void
.end method
