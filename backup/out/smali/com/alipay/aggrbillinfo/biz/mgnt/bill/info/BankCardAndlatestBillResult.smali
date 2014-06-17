.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public bankCardId:Ljava/lang/String;

.field public bankCardLast4No:Ljava/lang/String;

.field public bankCode:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public latestBill:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;

    invoke-direct {v0}, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->latestBill:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;

    return-void
.end method


# virtual methods
.method public getBankCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->bankCardId:Ljava/lang/String;

    return-object v0
.end method

.method public getBankCardLast4No()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->bankCardLast4No:Ljava/lang/String;

    return-object v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestBill()Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->latestBill:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setBankCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->bankCardId:Ljava/lang/String;

    return-void
.end method

.method public setBankCardLast4No(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->bankCardLast4No:Ljava/lang/String;

    return-void
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->bankCode:Ljava/lang/String;

    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->bankName:Ljava/lang/String;

    return-void
.end method

.method public setLatestBill(Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->latestBill:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->name:Ljava/lang/String;

    return-void
.end method
