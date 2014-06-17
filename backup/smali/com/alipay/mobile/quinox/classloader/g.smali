.class final Lcom/alipay/mobile/quinox/classloader/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/bundle/a;

.field final synthetic b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/classloader/InitExecutor;Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/g;->b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/g;->a:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/g;->a:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/g;->a:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bundle deleted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/g;->b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/g;->a:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->b(Lcom/alipay/mobile/quinox/bundle/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/g;->a:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bundle deleted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/quinox/classloader/d;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/g;->b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a(Lcom/alipay/mobile/quinox/classloader/InitExecutor;)Lcom/alipay/mobile/quinox/classloader/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/g;->a:Lcom/alipay/mobile/quinox/bundle/a;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/g;->b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->b(Lcom/alipay/mobile/quinox/classloader/InitExecutor;)Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/quinox/bundle/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/g;->b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a(Lcom/alipay/mobile/quinox/classloader/InitExecutor;)Lcom/alipay/mobile/quinox/classloader/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/classloader/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/g;->b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a(Lcom/alipay/mobile/quinox/classloader/InitExecutor;)Lcom/alipay/mobile/quinox/classloader/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/classloader/a;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/quinox/classloader/d;-><init>(Lcom/alipay/mobile/quinox/classloader/a;Lcom/alipay/mobile/quinox/bundle/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/g;->a:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bundle deleted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/g;->b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a(Lcom/alipay/mobile/quinox/classloader/InitExecutor;)Lcom/alipay/mobile/quinox/classloader/a;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lcom/alipay/mobile/quinox/classloader/a;->a(Ljava/lang/String;Lcom/alipay/mobile/quinox/classloader/d;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/g;->b:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->c(Lcom/alipay/mobile/quinox/classloader/InitExecutor;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
