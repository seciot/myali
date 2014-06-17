.class public Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductReq;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;


# instance fields
.field public cardId:Ljava/lang/String;

.field public paymentPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductReq;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductReq;->paymentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductReq;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setPaymentPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductReq;->paymentPassword:Ljava/lang/String;

    return-void
.end method
