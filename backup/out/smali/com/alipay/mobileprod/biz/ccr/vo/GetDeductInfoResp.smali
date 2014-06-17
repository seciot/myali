.class public Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;


# instance fields
.field public allowSignBalanceBaoDeduct:Z

.field public bindingMobilePhoneNo:Ljava/lang/String;

.field public debitType:Ljava/lang/String;

.field public debitTypeConfig:Ljava/lang/String;

.field public deductId:Ljava/lang/String;

.field public opendedBalanceBao:Z

.field public remindMobilePhoneNo:Ljava/lang/String;

.field public selectedBalance:Z

.field public selectedBalanceBao:Z

.field public selectedShortcutCard:Z

.field public shortcutCardInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;

.field public shortcutCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public signedBalanceBaoDeduct:Z

.field public signedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindingMobilePhoneNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->bindingMobilePhoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public getDebitType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->debitType:Ljava/lang/String;

    return-object v0
.end method

.method public getDebitTypeConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->debitTypeConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getDeductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->deductId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindMobilePhoneNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->remindMobilePhoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutCardInfo()Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->shortcutCardInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;

    return-object v0
.end method

.method public getShortcutCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->shortcutCardList:Ljava/util/List;

    return-object v0
.end method

.method public getSignedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->signedDate:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowSignBalanceBaoDeduct()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->allowSignBalanceBaoDeduct:Z

    return v0
.end method

.method public isOpendedBalanceBao()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->opendedBalanceBao:Z

    return v0
.end method

.method public isSelectedBalance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->selectedBalance:Z

    return v0
.end method

.method public isSelectedBalanceBao()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->selectedBalanceBao:Z

    return v0
.end method

.method public isSelectedShortcutCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->selectedShortcutCard:Z

    return v0
.end method

.method public isSignedBalanceBaoDeduct()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->signedBalanceBaoDeduct:Z

    return v0
.end method

.method public setAllowSignBalanceBaoDeduct(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->allowSignBalanceBaoDeduct:Z

    return-void
.end method

.method public setBindingMobilePhoneNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->bindingMobilePhoneNo:Ljava/lang/String;

    return-void
.end method

.method public setDebitType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->debitType:Ljava/lang/String;

    return-void
.end method

.method public setDebitTypeConfig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->debitTypeConfig:Ljava/lang/String;

    return-void
.end method

.method public setDeductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->deductId:Ljava/lang/String;

    return-void
.end method

.method public setOpendedBalanceBao(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->opendedBalanceBao:Z

    return-void
.end method

.method public setRemindMobilePhoneNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->remindMobilePhoneNo:Ljava/lang/String;

    return-void
.end method

.method public setSelectedBalance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->selectedBalance:Z

    return-void
.end method

.method public setSelectedBalanceBao(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->selectedBalanceBao:Z

    return-void
.end method

.method public setSelectedShortcutCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->selectedShortcutCard:Z

    return-void
.end method

.method public setShortcutCardInfo(Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->shortcutCardInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;

    return-void
.end method

.method public setShortcutCardList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->shortcutCardList:Ljava/util/List;

    return-void
.end method

.method public setSignedBalanceBaoDeduct(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->signedBalanceBaoDeduct:Z

    return-void
.end method

.method public setSignedDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;->signedDate:Ljava/lang/String;

    return-void
.end method
