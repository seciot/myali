.class public Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;
.super Ljava/lang/Object;


# instance fields
.field public cardNo:Ljava/lang/String;

.field public endDate:Ljava/util/Date;

.field public pageNum:I

.field public pageSize:I

.field public terminal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->pageSize:I

    return v0
.end method

.method public getTerminal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->terminal:Ljava/lang/String;

    return-object v0
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->cardNo:Ljava/lang/String;

    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->pageSize:I

    return-void
.end method

.method public setTerminal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryRequest;->terminal:Ljava/lang/String;

    return-void
.end method
