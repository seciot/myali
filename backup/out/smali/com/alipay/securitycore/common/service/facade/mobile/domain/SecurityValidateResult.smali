.class public Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateResult;
.super Ljava/lang/Object;


# instance fields
.field public message:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateResult;->success:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateResult;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateResult;->success:Z

    return-void
.end method
