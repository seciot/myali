.class public Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;
.super Ljava/lang/Object;


# instance fields
.field public resultCode:Ljava/lang/String;

.field public resultMsg:Ljava/lang/String;

.field public resultObject:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/logistics/client/dto/module/LogisticsDetail;",
            ">;"
        }
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->success:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultObject()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/logistics/client/dto/module/LogisticsDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->resultObject:Ljava/util/List;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->resultMsg:Ljava/lang/String;

    return-void
.end method

.method public setResultObject(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/logistics/client/dto/module/LogisticsDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->resultObject:Ljava/util/List;

    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;->success:Ljava/lang/Boolean;

    return-void
.end method
