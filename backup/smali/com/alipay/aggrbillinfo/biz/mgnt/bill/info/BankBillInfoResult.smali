.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public bankCardBills:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfoResult;->bankCardBills:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getBankCardBills()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfoResult;->bankCardBills:Ljava/util/Set;

    return-object v0
.end method

.method public setBankCardBills(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfoResult;->bankCardBills:Ljava/util/Set;

    return-void
.end method
