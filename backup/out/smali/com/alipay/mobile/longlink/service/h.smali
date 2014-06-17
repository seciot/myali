.class final Lcom/alipay/mobile/longlink/service/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/mobile/longlink/service/a;

.field final synthetic b:Lcom/alipay/mobile/longlink/service/a;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/h;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/h;->a:Lcom/alipay/mobile/longlink/service/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/longlink/service/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/longlink/service/h;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x4

    const/4 v2, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "===== RegisterTask.run()====="

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/h;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/h;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/service/a;->i(Lcom/alipay/mobile/longlink/service/a;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/longlink/b/c/c;->a(I)Lcom/alipay/mobile/longlink/b/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/c/a;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/c/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/longlink/service/l;->a()Lcom/alipay/mobile/longlink/service/l;

    move-result-object v2

    const-string/jumbo v3, "linkToken"

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "loginServerTime"

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/l;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "osType"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "network"

    iget-object v4, p0, Lcom/alipay/mobile/longlink/service/h;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v4}, Lcom/alipay/mobile/longlink/service/a;->j(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "linkVersion"

    const-string/jumbo v4, "1.1.0"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x4

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "RegisterTask() registration will be sent! data:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "linkExtInfo"

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/c/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/h;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v1}, Lcom/alipay/mobile/longlink/service/a;->a(Lcom/alipay/mobile/longlink/service/a;)Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/h;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/a;->i()Lcom/alipay/mobile/longlink/b/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/d/c;)V

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/h;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v1}, Lcom/alipay/mobile/longlink/service/a;->a(Lcom/alipay/mobile/longlink/service/a;)Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/h;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/a;->j()Lcom/alipay/mobile/longlink/b/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/d/c;)V

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/h;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v1}, Lcom/alipay/mobile/longlink/service/a;->a(Lcom/alipay/mobile/longlink/service/a;)Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/h;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/a;->k()Lcom/alipay/mobile/longlink/b/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/d/c;)V

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/h;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v1}, Lcom/alipay/mobile/longlink/service/a;->a(Lcom/alipay/mobile/longlink/service/a;)Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/h;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/a;->l()Lcom/alipay/mobile/longlink/b/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/d/c;)V

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RegisterTask() registration will be sent! length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/c/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/h;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/c/a;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Account registered already"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
