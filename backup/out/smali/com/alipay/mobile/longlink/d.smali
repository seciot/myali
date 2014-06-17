.class Lcom/alipay/mobile/longlink/d;
.super Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer$Stub;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/longlink/LongLinkServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/d;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    invoke-direct {p0}, Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "packetData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "packet="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/d;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    #calls: Lcom/alipay/mobile/longlink/LongLinkServiceManager;->onAppHanlder(Lorg/json/JSONObject;)Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$300(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onReceivedPacket call onAppHanlder successfully."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/d;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    #calls: Lcom/alipay/mobile/longlink/LongLinkServiceManager;->onCommonHanlder(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$400(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Lorg/json/JSONObject;)V

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onReceivedPacket call mComPktHanlder to broadcast."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    invoke-static {}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "=====> process info fail"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
