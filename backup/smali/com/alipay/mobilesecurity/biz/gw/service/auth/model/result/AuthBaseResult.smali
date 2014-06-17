.class public Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;
.super Ljava/lang/Object;


# instance fields
.field public launchType:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->success:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLaunchType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->launchType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->success:Z

    return v0
.end method

.method public setLaunchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->launchType:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->success:Z

    return-void
.end method
