.class public Lcom/alipay/pushsdk/push/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/pushsdk/push/b/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/pushsdk/push/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/b/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/b/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "connectionClosed()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/a/p;)V
    .locals 9

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/push/b/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "=== connectionClosedOnError()==="

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->j:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->w:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->c()I

    move-result v7

    mul-int/lit8 v7, v7, 0x1

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "PersistentConnectionListener_connectionClosedOnError:ReconnectInterval="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->c()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/a/p;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/a/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/j;->a(Z)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/a/m;->e()V

    const-string/jumbo v1, "41"

    const-string/jumbo v2, "7"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/pushsdk/push/j;->c(J)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/j;->w()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x3

    sget-object v4, Lcom/alipay/pushsdk/push/b/d;->a:Ljava/lang/String;

    const-string/jumbo v5, "connectionClosedOnError() isFrontPolicy and then to startReconnectionThread..."

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/pushsdk/push/j;->d(J)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->p()V

    const-string/jumbo v1, "80"

    const-string/jumbo v2, "8"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "81"

    const-string/jumbo v2, "6"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
