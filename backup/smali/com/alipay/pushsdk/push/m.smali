.class final Lcom/alipay/pushsdk/push/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/j;

.field final synthetic b:Lcom/alipay/pushsdk/push/j;


# direct methods
.method private constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/m;->b:Lcom/alipay/pushsdk/push/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/pushsdk/push/j;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/m;-><init>(Lcom/alipay/pushsdk/push/j;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "===== HeartBeatTask() Runnable====="

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->j(Lcom/alipay/pushsdk/push/j;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/c/c;->a(I)Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->b(I)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HeartBeatTask() heartBeat will be sent! length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/c/a;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Account registered has not been done."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
