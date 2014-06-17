.class final Lcom/alipay/pushsdk/push/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/a/f;

.field private b:Lcom/alipay/pushsdk/push/c/a;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/a/f;Lcom/alipay/pushsdk/push/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/i;->a:Lcom/alipay/pushsdk/push/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/pushsdk/push/a/i;->b:Lcom/alipay/pushsdk/push/c/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/i;->a:Lcom/alipay/pushsdk/push/a/f;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/a/f;->a(Lcom/alipay/pushsdk/push/a/f;)Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/pushsdk/push/a/m;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/a/b;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/a/i;->b:Lcom/alipay/pushsdk/push/c/a;

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/a/b;->a(Lcom/alipay/pushsdk/push/c/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
