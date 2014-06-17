.class public Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;
.super Ljava/lang/Object;


# instance fields
.field public cardNo:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public endTime:J

.field public extendField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public lastBillNo:Ljava/lang/String;

.field public month:Ljava/lang/String;

.field public monthOffset:Ljava/lang/String;

.field public nextPageStartTime:J

.field public nextPageStartType:Ljava/lang/String;

.field public pageNum:I

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->endTime:J

    return-wide v0
.end method

.method public getExtendField()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->extendField:Ljava/util/Map;

    return-object v0
.end method

.method public getLastBillNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->lastBillNo:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->monthOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->nextPageStartTime:J

    return-wide v0
.end method

.method public getNextPageStartType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->nextPageStartType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->pageSize:I

    return v0
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->cardNo:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->category:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->endTime:J

    return-void
.end method

.method public setExtendField(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->extendField:Ljava/util/Map;

    return-void
.end method

.method public setLastBillNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->lastBillNo:Ljava/lang/String;

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->month:Ljava/lang/String;

    return-void
.end method

.method public setMonthOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->monthOffset:Ljava/lang/String;

    return-void
.end method

.method public setNextPageStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->nextPageStartTime:J

    return-void
.end method

.method public setNextPageStartType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->nextPageStartType:Ljava/lang/String;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;->pageSize:I

    return-void
.end method
