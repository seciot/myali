.class public Lcom/alipay/mobilecodec/service/pai/res/RouteRes;
.super Ljava/lang/Object;


# instance fields
.field public memo:Ljava/lang/String;

.field public resultCode:I

.field public routeInfos:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilecodec/service/pai/res/RouteRes;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilecodec/service/pai/res/RouteRes;->resultCode:I

    return v0
.end method

.method public getRouteInfos()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilecodec/service/pai/res/RouteRes;->routeInfos:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilecodec/service/pai/res/RouteRes;->success:Z

    return v0
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilecodec/service/pai/res/RouteRes;->memo:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilecodec/service/pai/res/RouteRes;->resultCode:I

    return-void
.end method

.method public setRouteInfos(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilecodec/service/pai/res/RouteRes;->routeInfos:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilecodec/service/pai/res/RouteRes;->success:Z

    return-void
.end method
