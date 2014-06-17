.class public Lcom/alipay/publiccore/client/message/ImageMsgEntry;
.super Lcom/alipay/publiccore/client/message/BaseMsgEntry;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/message/ImageMsgItem;",
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

    invoke-direct {p0}, Lcom/alipay/publiccore/client/message/BaseMsgEntry;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->publicId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->toUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->showType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->articles:Ljava/util/List;

    return-void
.end method
