.class final Lcom/alipay/mobile/longlink/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/mobile/longlink/service/a;

.field final synthetic b:Lcom/alipay/mobile/longlink/service/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/b;->b:Lcom/alipay/mobile/longlink/service/a;

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x5

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "terminatePersistentConnection()... called. connection:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v3}, Lcom/alipay/mobile/longlink/service/a;->a(Lcom/alipay/mobile/longlink/service/a;)Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "terminatePersistentConnection()... run()"

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->i()Lcom/alipay/mobile/longlink/b/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;->b(Lcom/alipay/mobile/longlink/b/d/c;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->j()Lcom/alipay/mobile/longlink/b/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;->b(Lcom/alipay/mobile/longlink/b/d/c;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->j()Lcom/alipay/mobile/longlink/b/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;->b(Lcom/alipay/mobile/longlink/b/d/c;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->l()Lcom/alipay/mobile/longlink/b/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;->b(Lcom/alipay/mobile/longlink/b/d/c;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/b;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/k;->e()V

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "terminatePersistentConnection()...Done!"

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
