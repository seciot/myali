.class final Lcom/alipay/pushsdk/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/b/b;

.field final synthetic b:Lcom/alipay/pushsdk/b/e;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/b/e;Lcom/alipay/pushsdk/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/b/g;->b:Lcom/alipay/pushsdk/b/e;

    iput-object p2, p0, Lcom/alipay/pushsdk/b/g;->a:Lcom/alipay/pushsdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x4

    :try_start_0
    new-instance v1, Lcom/alipay/pushsdk/b/a;

    iget-object v2, p0, Lcom/alipay/pushsdk/b/g;->a:Lcom/alipay/pushsdk/b/b;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/b/g;->b:Lcom/alipay/pushsdk/b/e;

    invoke-static {v3}, Lcom/alipay/pushsdk/b/e;->a(Lcom/alipay/pushsdk/b/e;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/pushsdk/b/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/b/g;->a:Lcom/alipay/pushsdk/b/b;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/b/b;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/pushsdk/b/g;->a:Lcom/alipay/pushsdk/b/b;

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/b/b;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/b/g;->a:Lcom/alipay/pushsdk/b/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/b/b;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/pushsdk/b/g;->a:Lcom/alipay/pushsdk/b/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/b/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/alipay/pushsdk/b/g;->a:Lcom/alipay/pushsdk/b/b;

    invoke-virtual {v1, v4}, Lcom/alipay/pushsdk/b/b;->a(I)V

    goto :goto_0
.end method
