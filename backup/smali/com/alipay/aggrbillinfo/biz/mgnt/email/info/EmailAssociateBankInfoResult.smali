.class public Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public banks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfoResult;->banks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBanks()Ljava/util/List;
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

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfoResult;->banks:Ljava/util/List;

    return-object v0
.end method

.method public setBanks(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfoResult;->banks:Ljava/util/List;

    return-void
.end method
