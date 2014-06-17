.class public Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;
.super Lcom/alipay/logistics/client/dto/request/Request;


# instance fields
.field private logisticsCode:Ljava/lang/String;

.field private logisticsNo:Ljava/lang/String;

.field private logisticsStatus:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/logistics/client/dto/request/Request;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogisticsCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;->logisticsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;->logisticsNo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;->logisticsStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setLogisticsCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;->logisticsCode:Ljava/lang/String;

    return-void
.end method

.method public setLogisticsNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;->logisticsNo:Ljava/lang/String;

    return-void
.end method

.method public setLogisticsStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;->logisticsStatus:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;->userId:Ljava/lang/String;

    return-void
.end method
