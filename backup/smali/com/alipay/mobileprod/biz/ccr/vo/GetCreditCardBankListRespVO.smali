.class public Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBankListRespVO;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;


# instance fields
.field public bankInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBankListRespVO;->bankInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setBankInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBankListRespVO;->bankInfoList:Ljava/util/List;

    return-void
.end method
