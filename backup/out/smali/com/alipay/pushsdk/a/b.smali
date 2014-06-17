.class final Lcom/alipay/pushsdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/a/b;->a:Lcom/alipay/pushsdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/a/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sendConfigReq doing..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/a/c;

    iget-object v1, p0, Lcom/alipay/pushsdk/a/b;->a:Lcom/alipay/pushsdk/a/a;

    invoke-static {v1}, Lcom/alipay/pushsdk/a/a;->a(Lcom/alipay/pushsdk/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/a/c;->a()V

    return-void
.end method
