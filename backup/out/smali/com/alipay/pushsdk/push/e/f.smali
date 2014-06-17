.class public Lcom/alipay/pushsdk/push/e/f;
.super Lcom/alipay/pushsdk/push/e/d;


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/e/f;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/e/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/e/d;-><init>(Lcom/alipay/pushsdk/push/j;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "10"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/pushsdk/push/j;->b(J)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/pushsdk/push/j;->d(J)V

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/e/f;->c:Ljava/lang/String;

    const-string/jumbo v2, "clearLastConnInfo done!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/j;->a(J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->u()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "41"

    const-string/jumbo v2, "3"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/e/f;->c:Ljava/lang/String;

    const-string/jumbo v2, "onPreExecute Connected is true."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/j;->a(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->b()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "40"

    const-string/jumbo v2, "6"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final d()Z
    .locals 5

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "10"

    const-string/jumbo v3, "6"

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/e/f;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UserTrigger checkState is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
