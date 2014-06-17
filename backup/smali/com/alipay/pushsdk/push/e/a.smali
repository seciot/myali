.class public Lcom/alipay/pushsdk/push/e/a;
.super Lcom/alipay/pushsdk/push/e/d;


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/e/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/e/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/e/d;-><init>(Lcom/alipay/pushsdk/push/j;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    const-wide/16 v13, 0x0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->h()J

    move-result-wide v8

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->d()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v10

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/e/a;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "osTriggerEvent_onExecute isConnected="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/j;->r()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lostedTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastConnectedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10, v11}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastCreateConnectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8, v9}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->h:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->w:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v13

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "osTriggerEvent_onExecute:lastConnectedTime="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " trigger="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    cmp-long v0, v8, v13

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->b()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "01"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->u()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "41"

    const-string/jumbo v2, "3"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/pushsdk/push/p;->a()I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->p()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "70"

    const-string/jumbo v2, "8"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "71"

    const-string/jumbo v2, "6"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
