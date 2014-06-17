.class final Lcom/alipay/pushsdk/push/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/j;

.field final synthetic b:Lcom/alipay/pushsdk/push/j;


# direct methods
.method private constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/pushsdk/push/j;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/n;-><init>(Lcom/alipay/pushsdk/push/j;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v11, 0x4

    const/4 v2, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "===== RegisterTask.run()====="

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->s()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->j(Lcom/alipay/pushsdk/push/j;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/c/c;->a(I)Lcom/alipay/pushsdk/push/c/a;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/c/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/alipay/pushsdk/c/b;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/j;->k(Lcom/alipay/pushsdk/push/j;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/c/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "userId"

    iget-object v3, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/j;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v4, "com.eg.android.AlipayGphoneRC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "alipayclient-rc"

    :cond_0
    :goto_1
    const-string/jumbo v3, "appId"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "trigger"

    iget-object v3, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/j;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->g()J

    move-result-wide v3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->f()J

    move-result-wide v5

    sub-long v7, v5, v3

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-string/jumbo v0, "curCreate"

    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "preClose"

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "RegisterTask() registration userId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "userId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", delTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/c/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RegisterTask() registration will be sent! data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/c/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->a(Lcom/alipay/pushsdk/push/j;)Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/j;->l()Lcom/alipay/pushsdk/push/d/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/d/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->a(Lcom/alipay/pushsdk/push/j;)Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/j;->m()Lcom/alipay/pushsdk/push/d/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/d/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->a(Lcom/alipay/pushsdk/push/j;)Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/j;->n()Lcom/alipay/pushsdk/push/d/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/d/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->a(Lcom/alipay/pushsdk/push/j;)Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/j;->o()Lcom/alipay/pushsdk/push/d/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/d/c;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RegisterTask() registration will be sent! length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RegisterTask() pushManager="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/c/a;)V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    :try_start_2
    const-string/jumbo v0, "userId"

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :cond_2
    if-eqz v3, :cond_0

    :try_start_3
    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "alipayclient"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x2

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RegisterTask() getRequestObj is null!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Account registered already"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
