.class public Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;",
            ">;"
        }
    .end annotation
.end field

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

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->actionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->actionParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->actionParam:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->data:Ljava/util/List;

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

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->extInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setActionParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->actionParam:Ljava/lang/String;

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->data:Ljava/util/List;

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

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->extInfo:Ljava/util/Map;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->title:Ljava/lang/String;

    return-void
.end method
