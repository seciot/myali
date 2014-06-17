.class final Lcom/alipay/pushsdk/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/pushsdk/a/g;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/a/c;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/a/d;->a:Lcom/alipay/pushsdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/a/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UpdateUserListener onFail."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/b/b;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/alipay/pushsdk/b/b;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/a/c;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ConfigListener onComplete jsonResponse:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/pushsdk/a/d;->a:Lcom/alipay/pushsdk/a/c;

    invoke-static {v1, v0}, Lcom/alipay/pushsdk/a/c;->a(Lcom/alipay/pushsdk/a/c;Lorg/json/JSONObject;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/pushsdk/a/d;->a:Lcom/alipay/pushsdk/a/c;

    invoke-static {v2}, Lcom/alipay/pushsdk/a/c;->a(Lcom/alipay/pushsdk/a/c;)Lcom/alipay/pushsdk/c/b;

    move-result-object v2

    const-string/jumbo v3, "LAST_CONFIG_TIME"

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;J)V

    const/4 v2, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/a/c;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onComplete() saveCfgPolicy Time is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/alipay/pushsdk/a/d;->a:Lcom/alipay/pushsdk/a/c;

    invoke-static {v0}, Lcom/alipay/pushsdk/a/c;->b(Lcom/alipay/pushsdk/a/c;)Lcom/alipay/pushsdk/push/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/a/d;->a:Lcom/alipay/pushsdk/a/c;

    invoke-static {v0}, Lcom/alipay/pushsdk/a/c;->c(Lcom/alipay/pushsdk/a/c;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/pushsdk/a/d;->a:Lcom/alipay/pushsdk/a/c;

    invoke-static {v2}, Lcom/alipay/pushsdk/a/c;->c(Lcom/alipay/pushsdk/a/c;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
