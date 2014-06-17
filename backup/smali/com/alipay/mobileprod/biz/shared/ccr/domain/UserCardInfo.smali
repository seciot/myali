.class public Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;
.super Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canDeduct:Z

.field public cardId:Ljava/lang/String;

.field public cardIndexNo:Ljava/lang/String;

.field public deductId:Ljava/lang/String;

.field public deductMemo:Ljava/lang/String;

.field public deductSignedDate:Ljava/lang/String;

.field public fastPay:Ljava/lang/String;

.field public holderName:Ljava/lang/String;

.field public openedBillQuery:Ljava/lang/String;

.field public openedEmailBillQuery:Z

.field public remindDate:Ljava/lang/String;

.field public remindDay:Ljava/lang/String;

.field public remindDayRemind:Ljava/lang/String;

.field public remindStatus:Ljava/lang/String;

.field public tail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIndexNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->cardIndexNo:Ljava/lang/String;

    return-object v0
.end method

.method public getDeductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->deductId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeductMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->deductMemo:Ljava/lang/String;

    return-object v0
.end method

.method public getDeductSignedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->deductSignedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFastPay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->fastPay:Ljava/lang/String;

    return-object v0
.end method

.method public getHolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->holderName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenedBillQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->openedBillQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->remindDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindDay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->remindDay:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindDayRemind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->remindDayRemind:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->remindStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->tail:Ljava/lang/String;

    return-object v0
.end method

.method public isCanDeduct()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->canDeduct:Z

    return v0
.end method

.method public isOpenedEmailBillQuery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->openedEmailBillQuery:Z

    return v0
.end method

.method public setCanDeduct(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->canDeduct:Z

    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setCardIndexNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->cardIndexNo:Ljava/lang/String;

    return-void
.end method

.method public setDeductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->deductId:Ljava/lang/String;

    return-void
.end method

.method public setDeductMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->deductMemo:Ljava/lang/String;

    return-void
.end method

.method public setDeductSignedDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->deductSignedDate:Ljava/lang/String;

    return-void
.end method

.method public setFastPay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->fastPay:Ljava/lang/String;

    return-void
.end method

.method public setHolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->holderName:Ljava/lang/String;

    return-void
.end method

.method public setOpenedBillQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->openedBillQuery:Ljava/lang/String;

    return-void
.end method

.method public setOpenedEmailBillQuery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->openedEmailBillQuery:Z

    return-void
.end method

.method public setRemindDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->remindDate:Ljava/lang/String;

    return-void
.end method

.method public setRemindDay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->remindDay:Ljava/lang/String;

    return-void
.end method

.method public setRemindDayRemind(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->remindDayRemind:Ljava/lang/String;

    return-void
.end method

.method public setRemindStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->remindStatus:Ljava/lang/String;

    return-void
.end method

.method public setTail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;->tail:Ljava/lang/String;

    return-void
.end method
