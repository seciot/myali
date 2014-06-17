.class public Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitReqVO;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;


# instance fields
.field public bankAndCardBinVersion:Ljava/lang/String;

.field public pageNum:I

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankAndCardBinVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitReqVO;->bankAndCardBinVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitReqVO;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitReqVO;->pageSize:I

    return v0
.end method

.method public setBankAndCardBinVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitReqVO;->bankAndCardBinVersion:Ljava/lang/String;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitReqVO;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitReqVO;->pageSize:I

    return-void
.end method
