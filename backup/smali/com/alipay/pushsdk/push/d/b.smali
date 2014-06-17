.class public Lcom/alipay/pushsdk/push/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/pushsdk/push/d/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/pushsdk/push/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/d/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 9

    const/4 v1, 0x4

    const/4 v3, 0x3

    new-instance v0, Lcom/alipay/pushsdk/push/f;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/f;-><init>(I)V

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/a/e;->a(Lcom/alipay/pushsdk/push/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/a/o;->a(J)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/j;->b(J)V

    sget-object v0, Lcom/alipay/pushsdk/push/d/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "NotificationPacketListener.processPacket()..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/pushsdk/c/b;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/c/a;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/pushsdk/c/b;->a(Lorg/json/JSONObject;Z)Lcom/alipay/pushsdk/data/NotifierInfo;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/j;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/pushsdk/c/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v1, Lcom/alipay/pushsdk/push/o;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/j;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->j()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/pushsdk/push/c/c;->a(I)Lcom/alipay/pushsdk/push/c/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/c/a;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->g()Lcom/alipay/pushsdk/data/b;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string/jumbo v3, "userId"

    iget-object v4, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v3, "k"

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/c/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/d/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processPacket() respPacket will be sent. dataResp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/b;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/c/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->u:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->t:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    const-string/jumbo v7, "NotificationPacketListener_processPacket"

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const-string/jumbo v0, "34"

    const-string/jumbo v1, "01"

    const-string/jumbo v2, "4"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    :try_start_3
    const-string/jumbo v3, "userId"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
