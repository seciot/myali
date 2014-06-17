.class public Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgEntry;
.super Lcom/alipay/publiccore/common/service/facade/model/PublicEventBaseMsgEntry;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;",
            ">;"
        }
    .end annotation
.end field

.field public createTime:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public showType:Ljava/lang/String;

.field public toUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/PublicEventBaseMsgEntry;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgEntry;->publicId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgEntry;->toUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgEntry;->createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgEntry;->showType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgEntry;->articles:Ljava/util/List;

    return-void
.end method
