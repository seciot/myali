.class public Lcom/alipay/pushsdk/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/pushsdk/c/b;

.field private d:Lcom/alipay/pushsdk/push/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/a/c;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    new-instance v0, Lcom/alipay/pushsdk/c/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/c;->c:Lcom/alipay/pushsdk/c/b;

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    iget-object v1, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/c;->d:Lcom/alipay/pushsdk/push/h;

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/a/c;)Lcom/alipay/pushsdk/c/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/a/c;->c:Lcom/alipay/pushsdk/c/b;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/a/c;Lorg/json/JSONObject;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/alipay/pushsdk/c/b;

    iget-object v0, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "successCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    const-string/jumbo v2, "successCount"

    int-to-long v5, v0

    invoke-virtual {v3, v2, v5, v6}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;J)V

    const-string/jumbo v2, "intervalTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    const/16 v2, 0xf0

    :cond_1
    const-string/jumbo v5, "intervalTime"

    int-to-long v6, v2

    invoke-virtual {v3, v5, v6, v7}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;J)V

    const-string/jumbo v3, "traceLog"

    const-string/jumbo v5, "false"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "true"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/alipay/pushsdk/push/a/o;->c(Z)V

    new-instance v3, Lcom/alipay/pushsdk/push/o;

    iget-object v6, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Lcom/alipay/pushsdk/push/o;->c(Ljava/lang/String;)V

    const-string/jumbo v3, "pushCfgId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "pushCfg"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/alipay/pushsdk/a/c;->c:Lcom/alipay/pushsdk/c/b;

    invoke-virtual {v7, v6, v3}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v7, "publicMsg"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/alipay/pushsdk/a/c;->c:Lcom/alipay/pushsdk/c/b;

    invoke-virtual {v8, v7, v1}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;Z)V

    :cond_3
    const-string/jumbo v1, "personalMsg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/alipay/pushsdk/a/c;->c:Lcom/alipay/pushsdk/c/b;

    invoke-virtual {v8, v1, v4}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;Z)V

    :cond_4
    const/4 v4, 0x3

    sget-object v8, Lcom/alipay/pushsdk/a/c;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "handleCfgData() successCount="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, ", intervalTime="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", pushTraceLog="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v8, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleCfgData() pushCfgId="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pushCfgData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleCfgData() pubMsg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", personalMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    move v3, v4

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alipay/pushsdk/a/c;)Lcom/alipay/pushsdk/push/h;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/a/c;->d:Lcom/alipay/pushsdk/push/h;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/pushsdk/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/pushsdk/a/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/alipay/pushsdk/a/c;->d:Lcom/alipay/pushsdk/push/h;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/pushsdk/c/a;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/pushsdk/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request() getConfigURL="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/alipay/pushsdk/a/c;->c:Lcom/alipay/pushsdk/c/b;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/c/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/alipay/pushsdk/data/f;

    iget-object v3, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/alipay/pushsdk/data/f;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "lastPubMsgId"

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "pushCfgId"

    iget-object v3, p0, Lcom/alipay/pushsdk/a/c;->c:Lcom/alipay/pushsdk/c/b;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/c/b;->a()Lcom/alipay/pushsdk/data/a;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x3

    sget-object v3, Lcom/alipay/pushsdk/a/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getReqData() jsonRequest="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/a/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a/d;-><init>(Lcom/alipay/pushsdk/a/c;)V

    new-instance v3, Lcom/alipay/pushsdk/a/e;

    iget-object v4, p0, Lcom/alipay/pushsdk/a/c;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/alipay/pushsdk/a/e;-><init>(Landroid/content/Context;Lcom/alipay/pushsdk/a/g;)V

    invoke-virtual {v3, v1, v2}, Lcom/alipay/pushsdk/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
