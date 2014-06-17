.class public Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public amount:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;

.field public inOut:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public modifiedTime:Ljava/lang/String;

.field public showAvatar:Z

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;

.field public voiceMemoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->inOut:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->actionType:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->actionParam:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->extInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getActionParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->actionParam:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->extInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->inOut:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->modifiedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->tradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMemoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->voiceMemoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isShowAvatar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->showAvatar:Z

    return v0
.end method

.method public setActionParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->actionParam:Ljava/lang/String;

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->amount:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->extInfo:Ljava/util/Map;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setInOut(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->inOut:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->memo:Ljava/lang/String;

    return-void
.end method

.method public setModifiedTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->modifiedTime:Ljava/lang/String;

    return-void
.end method

.method public setShowAvatar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->showAvatar:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->status:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->title:Ljava/lang/String;

    return-void
.end method

.method public setTradeNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->tradeNo:Ljava/lang/String;

    return-void
.end method

.method public setVoiceMemoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;->voiceMemoUrl:Ljava/lang/String;

    return-void
.end method
