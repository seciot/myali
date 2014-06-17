.class public Lcom/alipay/publiccore/client/message/MessageInfo;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public consuBillMsgEntry:Lcom/alipay/publiccore/client/message/ConsuBillMsgEntry;

.field public consuMsgEntry:Lcom/alipay/publiccore/client/message/ConsuRecordMsgEntry;

.field public consuStatistMsgEntry:Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;

.field public imageMsgEntry:Lcom/alipay/publiccore/client/message/ImageMsgEntry;

.field public msgType:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public todoMsgEntry:Lcom/alipay/publiccore/client/message/TodoMsgEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->msgType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->imageMsgEntry:Lcom/alipay/publiccore/client/message/ImageMsgEntry;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->todoMsgEntry:Lcom/alipay/publiccore/client/message/TodoMsgEntry;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->consuMsgEntry:Lcom/alipay/publiccore/client/message/ConsuRecordMsgEntry;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->consuBillMsgEntry:Lcom/alipay/publiccore/client/message/ConsuBillMsgEntry;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->consuStatistMsgEntry:Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;

    return-void
.end method
