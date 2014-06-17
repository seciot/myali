.class final Lcom/alipay/mobile/longlink/b/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/b/a/e;

.field private b:Lcom/alipay/mobile/longlink/b/c/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/longlink/b/a/e;Lcom/alipay/mobile/longlink/b/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/h;->a:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/longlink/b/a/h;->b:Lcom/alipay/mobile/longlink/b/c/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/h;->a:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/b/a/e;->a(Lcom/alipay/mobile/longlink/b/a/e;)Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/longlink/b/a/k;->c:Ljava/util/Map;

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

    check-cast v0, Lcom/alipay/mobile/longlink/b/a/b;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/b/a/h;->b:Lcom/alipay/mobile/longlink/b/c/a;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/longlink/b/a/b;->a(Lcom/alipay/mobile/longlink/b/c/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
