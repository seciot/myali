.class public Lcom/alipay/statusbar/common/sal/mobilegw/UnLoginTodoRemind;
.super Lcom/alipay/statusbar/common/sal/mobilegw/TodoRemind;


# instance fields
.field public channelId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/statusbar/common/sal/mobilegw/TodoRemind;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/UnLoginTodoRemind;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/UnLoginTodoRemind;->channelId:Ljava/lang/String;

    return-void
.end method
