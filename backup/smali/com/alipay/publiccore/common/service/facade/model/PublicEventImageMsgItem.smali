.class public Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;
.super Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->actionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->actionParam:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->authType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->actionName:Ljava/lang/String;

    return-void
.end method
