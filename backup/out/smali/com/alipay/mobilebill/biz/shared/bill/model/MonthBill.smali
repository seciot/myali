.class public Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;
.super Ljava/lang/Object;


# instance fields
.field public endTime:J

.field public hasNext:Z

.field public lastBillNo:Ljava/lang/String;

.field public month:Ljava/lang/String;

.field public monthBills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;",
            ">;"
        }
    .end annotation
.end field

.field public monthDec:Ljava/lang/String;

.field public monthInc:Ljava/lang/String;

.field public monthOffset:Ljava/lang/String;

.field public nextPageStartTime:J

.field public nextPageType:Ljava/lang/String;

.field public pageNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->endTime:J

    return-wide v0
.end method

.method public getLastBillNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->lastBillNo:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthBills()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->monthBills:Ljava/util/List;

    return-object v0
.end method

.method public getMonthDec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->monthDec:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthInc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->monthInc:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->monthOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->nextPageStartTime:J

    return-wide v0
.end method

.method public getNextPageType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->nextPageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->pageNum:I

    return v0
.end method

.method public isHasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->hasNext:Z

    return v0
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->endTime:J

    return-void
.end method

.method public setHasNext(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->hasNext:Z

    return-void
.end method

.method public setLastBillNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->lastBillNo:Ljava/lang/String;

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->month:Ljava/lang/String;

    return-void
.end method

.method public setMonthBills(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->monthBills:Ljava/util/List;

    return-void
.end method

.method public setMonthDec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->monthDec:Ljava/lang/String;

    return-void
.end method

.method public setMonthInc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->monthInc:Ljava/lang/String;

    return-void
.end method

.method public setMonthOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->monthOffset:Ljava/lang/String;

    return-void
.end method

.method public setNextPageStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->nextPageStartTime:J

    return-void
.end method

.method public setNextPageType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->nextPageType:Ljava/lang/String;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;->pageNum:I

    return-void
.end method
