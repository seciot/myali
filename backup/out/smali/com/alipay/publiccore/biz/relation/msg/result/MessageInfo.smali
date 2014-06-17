.class public Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field public consuBillMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;

.field public consuMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;

.field public consuStatistMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuStatistMsgEntry;

.field public imageMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;

.field public msgType:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public todoMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->msgType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->imageMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->todoMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuBillMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuStatistMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuStatistMsgEntry;

    return-void
.end method


# virtual methods
.method public getConsuBillMsgEntry()Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuBillMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;

    return-object v0
.end method

.method public getConsuMsgEntry()Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;

    return-object v0
.end method

.method public getConsuStatistMsgEntry()Lcom/alipay/publiccore/biz/relation/msg/result/ConsuStatistMsgEntry;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuStatistMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuStatistMsgEntry;

    return-object v0
.end method

.method public getImageMsgEntry()Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->imageMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTodoMsgEntry()Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->todoMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;

    return-object v0
.end method

.method public setConsuBillMsgEntry(Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuBillMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;

    return-void
.end method

.method public setConsuMsgEntry(Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;

    return-void
.end method

.method public setConsuStatistMsgEntry(Lcom/alipay/publiccore/biz/relation/msg/result/ConsuStatistMsgEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuStatistMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuStatistMsgEntry;

    return-void
.end method

.method public setImageMsgEntry(Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->imageMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;

    return-void
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->msgType:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->time:Ljava/lang/String;

    return-void
.end method

.method public setTodoMsgEntry(Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->todoMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;

    return-void
.end method
