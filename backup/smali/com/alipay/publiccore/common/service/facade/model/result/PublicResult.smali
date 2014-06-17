.class public Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->success:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->resultCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->resultMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->success:Z

    return v0
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->resultCode:I

    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->resultMsg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->success:Z

    return-void
.end method
