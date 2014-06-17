.class public Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public allBanksOfUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public allEmailsOfUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field public billResult:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;

.field public emailAccount:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public routeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->allEmailsOfUser:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->allBanksOfUser:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->bankCardBills:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAllBanksOfUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->allBanksOfUser:Ljava/util/List;

    return-object v0
.end method

.method public getAllEmailsOfUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->allEmailsOfUser:Ljava/util/List;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->bankCardBills:Ljava/util/Set;

    return-object v0
.end method

.method public getBillResult()Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->billResult:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;

    return-object v0
.end method

.method public getEmailAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->emailAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->routeType:Ljava/lang/String;

    return-object v0
.end method

.method public setAllBanksOfUser(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->allBanksOfUser:Ljava/util/List;

    return-void
.end method

.method public setAllEmailsOfUser(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->allEmailsOfUser:Ljava/util/List;

    return-void
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

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->bankCardBills:Ljava/util/Set;

    return-void
.end method

.method public setBillResult(Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->billResult:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;

    return-void
.end method

.method public setEmailAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->emailAccount:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->key:Ljava/lang/String;

    return-void
.end method

.method public setRouteType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->routeType:Ljava/lang/String;

    return-void
.end method
