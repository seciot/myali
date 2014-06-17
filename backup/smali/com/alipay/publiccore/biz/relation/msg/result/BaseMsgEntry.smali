.class public Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field public agreementId:Ljava/lang/String;

.field public clieckedDelete:Z

.field public couldDelete:Z

.field public msgId:Ljava/lang/String;

.field public msgType:Ljava/lang/String;

.field public readed:Z

.field public thirdAccountId:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->agreementId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->thirdAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isClieckedDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->clieckedDelete:Z

    return v0
.end method

.method public isCouldDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->couldDelete:Z

    return v0
.end method

.method public isReaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->readed:Z

    return v0
.end method

.method public setAgreementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->agreementId:Ljava/lang/String;

    return-void
.end method

.method public setClieckedDelete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->clieckedDelete:Z

    return-void
.end method

.method public setCouldDelete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->couldDelete:Z

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->msgType:Ljava/lang/String;

    return-void
.end method

.method public setReaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->readed:Z

    return-void
.end method

.method public setThirdAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->thirdAccountId:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;->time:Ljava/lang/String;

    return-void
.end method
