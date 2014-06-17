.class public final Lcom/alipay/pushsdk/push/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v2

    const-string/jumbo v3, "APP_LAUNCH_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "APP_LAUNCH_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final b()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v2

    const-string/jumbo v3, "LAST_CONNECTED_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "LAST_CONNECTED_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final c()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v2

    const-string/jumbo v3, "LAST_LOSTED_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final c(J)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "LAST_LOSTED_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final d()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v2

    const-string/jumbo v3, "CREATE_CONNECT_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final d(J)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "CREATE_CONNECT_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "trigger"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method
