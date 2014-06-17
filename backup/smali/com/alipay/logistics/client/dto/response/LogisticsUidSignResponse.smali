.class public Lcom/alipay/logistics/client/dto/response/LogisticsUidSignResponse;
.super Lcom/alipay/logistics/client/dto/response/BaseResult;


# instance fields
.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/logistics/client/dto/response/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsUidSignResponse;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsUidSignResponse;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsUidSignResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsUidSignResponse;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsUidSignResponse;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsUidSignResponse;->userId:Ljava/lang/String;

    return-void
.end method
