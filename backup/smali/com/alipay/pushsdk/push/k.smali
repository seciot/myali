.class final Lcom/alipay/pushsdk/push/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/j;

.field final synthetic b:Lcom/alipay/pushsdk/push/j;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/j;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x5

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "terminatePersistentConnection()... called. connection:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/j;->a(Lcom/alipay/pushsdk/push/j;)Lcom/alipay/pushsdk/push/a/m;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "terminatePersistentConnection()... run()"

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->l()Lcom/alipay/pushsdk/push/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->b(Lcom/alipay/pushsdk/push/d/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->m()Lcom/alipay/pushsdk/push/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->b(Lcom/alipay/pushsdk/push/d/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->m()Lcom/alipay/pushsdk/push/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->b(Lcom/alipay/pushsdk/push/d/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/k;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->o()Lcom/alipay/pushsdk/push/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->b(Lcom/alipay/pushsdk/push/d/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/a/m;->e()V

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "terminatePersistentConnection()...Done!"

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
