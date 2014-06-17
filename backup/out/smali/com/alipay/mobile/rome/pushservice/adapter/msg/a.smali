.class final Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->b:Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->b:Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;->a(Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "push-->"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alipay/pushsdk/AliPushInterface;->setClientId(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/alipay/pushsdk/AliPushInterface;->setUtdid(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/alipay/pushsdk/AliPushInterface;->setChannel(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/alipay/pushsdk/AliPushInterface;->setVersion(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->b:Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;

    invoke-static {v4}, Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;->a(Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;)Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive: utdid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", clientId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/AliPushInterface;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->b:Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;->a(Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/msg/a;->b:Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;->a(Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "push<--"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
