.class public Lcom/alipay/mobile/longlink/b/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/longlink/b/d/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/longlink/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/b/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/d/b;->b:Lcom/alipay/mobile/longlink/service/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/longlink/b/c/a;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    new-instance v0, Lcom/alipay/mobile/longlink/b/c/f;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/longlink/b/c/f;-><init>(I)V

    invoke-interface {v0, p1}, Lcom/alipay/mobile/longlink/b/c/d;->a(Lcom/alipay/mobile/longlink/b/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "NotificationPacketListener.processPacket()..."

    invoke-static {v3, v0, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/b/c/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/longlink/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/longlink/a/a;-><init>()V

    const-string/jumbo v3, "linkToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/longlink/a/a;->a(Ljava/lang/String;)V

    const-string/jumbo v3, "msgData"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/longlink/a/a;->b(Ljava/lang/String;)V

    const-string/jumbo v3, "msgKey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/longlink/a/a;->c(Ljava/lang/String;)V

    const-string/jumbo v3, "msgCreateTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/longlink/a/a;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/longlink/a/a;->e(Ljava/lang/String;)V

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processMsgList() msgkey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", msgData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v1, Lcom/alipay/mobile/longlink/a/c;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/b/d/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/longlink/a/c;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/a/b;->a(Lcom/alipay/mobile/longlink/a/a;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/a/b;->b(Lcom/alipay/mobile/longlink/a/a;)V

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "processMsgList() saved ths msg."

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/d/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->f()Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packetData"

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/longlink/b/d/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/a;->f()Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;->a(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v1, 0x4

    :try_start_2
    sget-object v2, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "sendMsgData() Done!"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/b/c/a;->b()I

    move-result v1

    if-ne v1, v6, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x2

    :try_start_3
    sget-object v2, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "sendMsgData() getPacketNotifier failed."

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    :try_start_5
    sget-object v2, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "sendMsgData() Drop the Packet!"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendMsgData() msgkey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/d/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->g()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/longlink/b/c/c;->a(I)Lcom/alipay/mobile/longlink/b/c/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/b/c/a;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/b/c/a;->b(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "linkToken"

    iget-object v4, p0, Lcom/alipay/mobile/longlink/b/d/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v4}, Lcom/alipay/mobile/longlink/service/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "msgKey"

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/b/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/d/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/c/a;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/b/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processPacket() respPacket is sent. dataResp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_1
.end method
