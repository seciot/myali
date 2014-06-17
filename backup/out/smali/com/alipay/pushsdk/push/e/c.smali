.class public final Lcom/alipay/pushsdk/push/e/c;
.super Lcom/alipay/pushsdk/push/e/d;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/e/d;-><init>(Lcom/alipay/pushsdk/push/j;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/c;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/c;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->b()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "80"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/c;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->p()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "81"

    const-string/jumbo v2, "8"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
