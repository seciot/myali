.class public Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public bankName:Ljava/lang/String;

.field public bankShortName:Ljava/lang/String;

.field public cardType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinResp;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getBankShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinResp;->bankShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinResp;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinResp;->bankName:Ljava/lang/String;

    return-void
.end method

.method public setBankShortName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinResp;->bankShortName:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinResp;->cardType:Ljava/lang/String;

    return-void
.end method
