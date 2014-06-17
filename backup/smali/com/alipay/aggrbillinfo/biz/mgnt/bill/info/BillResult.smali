.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public bankAndLatestBillInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;

.field public billMonthInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;",
            ">;"
        }
    .end annotation
.end field

.field public hasRealRecord:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;

    invoke-direct {v0}, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->bankAndLatestBillInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->billMonthInfo:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->hasRealRecord:Z

    return-void
.end method


# virtual methods
.method public getBankAndLatestBillInfo()Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->bankAndLatestBillInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;

    return-object v0
.end method

.method public getBillMonthInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->billMonthInfo:Ljava/util/List;

    return-object v0
.end method

.method public isHasRealRecord()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->hasRealRecord:Z

    return v0
.end method

.method public setBankAndLatestBillInfo(Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->bankAndLatestBillInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;

    return-void
.end method

.method public setBillMonthInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->billMonthInfo:Ljava/util/List;

    return-void
.end method

.method public setHasRealRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->hasRealRecord:Z

    return-void
.end method
