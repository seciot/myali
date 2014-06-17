.class public Lcom/alipay/publiccore/client/message/ImageMsgItem;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionName:Ljava/lang/String;

.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public authType:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgItem;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgItem;->actionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgItem;->actionParam:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgItem;->authType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgItem;->actionName:Ljava/lang/String;

    return-void
.end method
