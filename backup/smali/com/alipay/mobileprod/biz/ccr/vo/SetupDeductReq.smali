.class public Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;


# instance fields
.field public actionType:Ljava/lang/String;

.field public cardId:Ljava/lang/String;

.field public debitType:Ljava/lang/String;

.field public paymentPassword:Ljava/lang/String;

.field public remindMobilePhoneNo:Ljava/lang/String;

.field public selectedBalance:Z

.field public selectedBalanceBao:Z

.field public selectedShortcutCard:Z

.field public shortcutCardSignChannelType:Ljava/lang/String;

.field public shortcutCardSignId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getDebitType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->debitType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->paymentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindMobilePhoneNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->remindMobilePhoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutCardSignChannelType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->shortcutCardSignChannelType:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutCardSignId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->shortcutCardSignId:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectedBalance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->selectedBalance:Z

    return v0
.end method

.method public isSelectedBalanceBao()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->selectedBalanceBao:Z

    return v0
.end method

.method public isSelectedShortcutCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->selectedShortcutCard:Z

    return v0
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setDebitType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->debitType:Ljava/lang/String;

    return-void
.end method

.method public setPaymentPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->paymentPassword:Ljava/lang/String;

    return-void
.end method

.method public setRemindMobilePhoneNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->remindMobilePhoneNo:Ljava/lang/String;

    return-void
.end method

.method public setSelectedBalance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->selectedBalance:Z

    return-void
.end method

.method public setSelectedBalanceBao(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->selectedBalanceBao:Z

    return-void
.end method

.method public setSelectedShortcutCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->selectedShortcutCard:Z

    return-void
.end method

.method public setShortcutCardSignChannelType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->shortcutCardSignChannelType:Ljava/lang/String;

    return-void
.end method

.method public setShortcutCardSignId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;->shortcutCardSignId:Ljava/lang/String;

    return-void
.end method
