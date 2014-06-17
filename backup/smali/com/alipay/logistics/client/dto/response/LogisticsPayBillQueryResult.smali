.class public Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;
.super Lcom/alipay/logistics/client/dto/response/BaseResult;


# instance fields
.field private amtCanModify:Ljava/lang/Boolean;

.field private deliverMobile:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private isNotify:Ljava/lang/Boolean;

.field private isPaid:Ljava/lang/Boolean;

.field private orderId:Ljava/lang/String;

.field private payAmount:Ljava/lang/String;

.field private payable:Ljava/lang/Boolean;

.field private queryAmount:Ljava/lang/String;

.field private tradeFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/logistics/client/dto/response/BaseResult;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->isPaid:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAmtCanModify()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->amtCanModify:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDeliverMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->deliverMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNotify()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->isNotify:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsPaid()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->isPaid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->payAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getPayable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->payable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getQueryAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->queryAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->tradeFrom:Ljava/lang/String;

    return-object v0
.end method

.method public setAmtCanModify(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->amtCanModify:Ljava/lang/Boolean;

    return-void
.end method

.method public setDeliverMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->deliverMobile:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setIsNotify(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->isNotify:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsPaid(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->isPaid:Ljava/lang/Boolean;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPayAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->payAmount:Ljava/lang/String;

    return-void
.end method

.method public setPayable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->payable:Ljava/lang/Boolean;

    return-void
.end method

.method public setQueryAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->queryAmount:Ljava/lang/String;

    return-void
.end method

.method public setTradeFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;->tradeFrom:Ljava/lang/String;

    return-void
.end method
