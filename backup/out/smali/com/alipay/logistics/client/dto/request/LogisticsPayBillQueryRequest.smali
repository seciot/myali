.class public Lcom/alipay/logistics/client/dto/request/LogisticsPayBillQueryRequest;
.super Ljava/lang/Object;


# instance fields
.field private logisticsCode:Ljava/lang/String;

.field private logisticsNo:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogisticsCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/request/LogisticsPayBillQueryRequest;->logisticsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/request/LogisticsPayBillQueryRequest;->logisticsNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/request/LogisticsPayBillQueryRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setLogisticsCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/request/LogisticsPayBillQueryRequest;->logisticsCode:Ljava/lang/String;

    return-void
.end method

.method public setLogisticsNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/request/LogisticsPayBillQueryRequest;->logisticsNo:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/request/LogisticsPayBillQueryRequest;->userId:Ljava/lang/String;

    return-void
.end method
