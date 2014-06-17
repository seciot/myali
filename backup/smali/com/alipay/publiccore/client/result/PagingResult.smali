.class public Lcom/alipay/publiccore/client/result/PagingResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;


# instance fields
.field public pageNum:I

.field public pageSize:I

.field public rowCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/publiccore/client/result/PagingResult;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/publiccore/client/result/PagingResult;->pageSize:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/publiccore/client/result/PagingResult;->rowCount:I

    return v0
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/publiccore/client/result/PagingResult;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/publiccore/client/result/PagingResult;->pageSize:I

    return-void
.end method

.method public setRowCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/publiccore/client/result/PagingResult;->rowCount:I

    return-void
.end method
