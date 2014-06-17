.class public Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;


# instance fields
.field public bankInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;

.field public billInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;

.field public userCardInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankInfo()Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;->bankInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;

    return-object v0
.end method

.method public getBillInfo()Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;->billInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;

    return-object v0
.end method

.method public getUserCardInfo()Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;->userCardInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;

    return-object v0
.end method

.method public setBankInfo(Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;->bankInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;

    return-void
.end method

.method public setBillInfo(Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;->billInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;

    return-void
.end method

.method public setUserCardInfo(Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;->userCardInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;

    return-void
.end method
