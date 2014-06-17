.class public Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;
.super Ljava/lang/Object;


# instance fields
.field public descendantCount:I

.field public msgStyle:Ljava/lang/String;

.field public needAck:Z

.field public persistenceCount:I

.field public temporaryMsgCount:I

.field public widgetMsgId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->temporaryMsgCount:I

    iput v1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->persistenceCount:I

    iput v1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->descendantCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->msgStyle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->needAck:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "(id:%s, t:%d, p:%d, d:%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->widgetMsgId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->temporaryMsgCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->persistenceCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->descendantCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
