.class public Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->c:Ljava/util/List;

    return-object v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getV()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->a:J

    return-wide v0
.end method

.method public setP(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->c:Ljava/util/List;

    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->b:Ljava/lang/String;

    return-void
.end method

.method public setV(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;->a:J

    return-void
.end method
