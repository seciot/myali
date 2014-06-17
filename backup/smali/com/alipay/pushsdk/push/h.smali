.class public final Lcom/alipay/pushsdk/push/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "channelId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "channelId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "versionId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "versionId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "utdId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "clientId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "msptId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "utdId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "msptId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
