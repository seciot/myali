.class public Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;


# instance fields
.field public billInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;

.field public canImmediatelyWork:Z

.field public deductDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillInfo()Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;->billInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;

    return-object v0
.end method

.method public getDeductDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;->deductDate:Ljava/lang/String;

    return-object v0
.end method

.method public isCanImmediatelyWork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;->canImmediatelyWork:Z

    return v0
.end method

.method public setBillInfo(Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;->billInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;

    return-void
.end method

.method public setCanImmediatelyWork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;->canImmediatelyWork:Z

    return-void
.end method

.method public setDeductDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;->deductDate:Ljava/lang/String;

    return-void
.end method
