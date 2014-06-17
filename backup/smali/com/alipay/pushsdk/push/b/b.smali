.class public Lcom/alipay/pushsdk/push/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/pushsdk/push/b/a;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/alipay/pushsdk/push/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/b/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v9, 0x3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/a/m;->c()V

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/b/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getConnection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->r:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->x:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->y:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    const-string/jumbo v7, "ConnectInitListener_onSuccess:setConnected"

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/push/b/b;->b:Ljava/lang/String;

    const-string/jumbo v1, "===== Connected onSuccess()====="

    invoke-static {v9, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->y()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->k()Lcom/alipay/pushsdk/push/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/b/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->t()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/a/o;->a(J)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/pushsdk/push/j;->b(J)V

    sget-object v0, Lcom/alipay/pushsdk/push/b/b;->b:Ljava/lang/String;

    const-string/jumbo v1, "onSuccess setLastConnectedTime."

    invoke-static {v9, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "31"

    const-string/jumbo v1, "01"

    const-string/jumbo v2, "2"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 9

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->r:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->w:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    const-string/jumbo v7, "ConnectInitListener_onFail"

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/push/b/b;->b:Ljava/lang/String;

    const-string/jumbo v2, "===== Connected onFail()====="

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->y()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/b/b;->b:Ljava/lang/String;

    const-string/jumbo v2, "onFail() isFrontPolicy and then to startReconnectionThread..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->p()V

    const-string/jumbo v0, "50"

    const-string/jumbo v1, "80"

    const-string/jumbo v2, "8"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "50"

    const-string/jumbo v1, "81"

    const-string/jumbo v2, "6"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
