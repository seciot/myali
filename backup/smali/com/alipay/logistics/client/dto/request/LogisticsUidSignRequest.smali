.class public Lcom/alipay/logistics/client/dto/request/LogisticsUidSignRequest;
.super Lcom/alipay/logistics/client/dto/request/Request;


# instance fields
.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/logistics/client/dto/request/Request;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/request/LogisticsUidSignRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/request/LogisticsUidSignRequest;->userId:Ljava/lang/String;

    return-void
.end method
