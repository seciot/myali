.class public Lcom/alipay/logistics/client/dto/response/LogisticsCreateOrderResult;
.super Lcom/alipay/logistics/client/dto/response/BaseResult;


# instance fields
.field private outTradeNo:Ljava/lang/String;

.field private tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/logistics/client/dto/response/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutTradeNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsCreateOrderResult;->outTradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsCreateOrderResult;->tradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public setOutTradeNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsCreateOrderResult;->outTradeNo:Ljava/lang/String;

    return-void
.end method

.method public setTradeNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsCreateOrderResult;->tradeNo:Ljava/lang/String;

    return-void
.end method
