.class public Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;


# instance fields
.field public certTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/CertTypeModel;",
            ">;"
        }
    .end annotation
.end field

.field public needCardNo:Ljava/lang/String;

.field public needCheckCode:Ljava/lang/String;

.field public needCvv2:Ljava/lang/String;

.field public needExpdate:Ljava/lang/String;

.field public needFastPaySign:Ljava/lang/String;

.field public needIdentity:Ljava/lang/String;

.field public needIndtype:Ljava/lang/String;

.field public needMobile:Ljava/lang/String;

.field public needUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;-><init>()V

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needExpdate:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needIndtype:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needIdentity:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needMobile:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCvv2:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCheckCode:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCardNo:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needUserName:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needFastPaySign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCertTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/CertTypeModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->certTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getNeedCardNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedCheckCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCheckCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedCvv2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCvv2:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedExpdate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needExpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedFastPaySign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needFastPaySign:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedIndtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needIndtype:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needUserName:Ljava/lang/String;

    return-object v0
.end method

.method public setCertTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/CertTypeModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->certTypeList:Ljava/util/List;

    return-void
.end method

.method public setNeedCardNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCardNo:Ljava/lang/String;

    return-void
.end method

.method public setNeedCheckCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCheckCode:Ljava/lang/String;

    return-void
.end method

.method public setNeedCvv2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCvv2:Ljava/lang/String;

    return-void
.end method

.method public setNeedExpdate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needExpdate:Ljava/lang/String;

    return-void
.end method

.method public setNeedFastPaySign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needFastPaySign:Ljava/lang/String;

    return-void
.end method

.method public setNeedIdentity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needIdentity:Ljava/lang/String;

    return-void
.end method

.method public setNeedIndtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needIndtype:Ljava/lang/String;

    return-void
.end method

.method public setNeedMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needMobile:Ljava/lang/String;

    return-void
.end method

.method public setNeedUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needUserName:Ljava/lang/String;

    return-void
.end method
