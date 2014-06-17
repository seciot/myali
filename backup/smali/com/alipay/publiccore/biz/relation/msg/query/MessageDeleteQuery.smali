.class public Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field public msgId:Ljava/lang/String;

.field public msgType:Ljava/lang/String;

.field public operationType:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;->msgType:Ljava/lang/String;

    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;->operationType:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;->userId:Ljava/lang/String;

    return-void
.end method
