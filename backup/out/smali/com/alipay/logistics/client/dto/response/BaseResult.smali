.class public Lcom/alipay/logistics/client/dto/response/BaseResult;
.super Ljava/lang/Object;


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/logistics/client/dto/response/BaseResult;->success:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/BaseResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/BaseResult;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/logistics/client/dto/response/BaseResult;->success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/BaseResult;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/BaseResult;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/logistics/client/dto/response/BaseResult;->success:Ljava/lang/Boolean;

    return-void
.end method
