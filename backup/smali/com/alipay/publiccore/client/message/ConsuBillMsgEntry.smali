.class public Lcom/alipay/publiccore/client/message/ConsuBillMsgEntry;
.super Lcom/alipay/publiccore/client/message/BaseMsgEntry;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/message/MsgNameValuePair;",
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

    invoke-direct {p0}, Lcom/alipay/publiccore/client/message/BaseMsgEntry;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ConsuBillMsgEntry;->actionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ConsuBillMsgEntry;->actionParam:Ljava/lang/String;

    return-void
.end method
