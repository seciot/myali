.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public billDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public memo:Ljava/lang/String;

.field public month:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->billDetails:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBillDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->billDetails:Ljava/util/List;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->year:Ljava/lang/String;

    return-object v0
.end method

.method public setBillDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->billDetails:Ljava/util/List;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->memo:Ljava/lang/String;

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->month:Ljava/lang/String;

    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->totalAmount:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->year:Ljava/lang/String;

    return-void
.end method
