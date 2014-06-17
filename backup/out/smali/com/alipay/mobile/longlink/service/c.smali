.class final Lcom/alipay/mobile/longlink/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/mobile/longlink/service/a;

.field final synthetic b:Lcom/alipay/mobile/longlink/service/a;

.field private c:Lcom/alipay/mobile/longlink/b/b/a;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/longlink/service/a;Lcom/alipay/mobile/longlink/b/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/c;->a:Lcom/alipay/mobile/longlink/service/a;

    iput-object p2, p0, Lcom/alipay/mobile/longlink/service/c;->c:Lcom/alipay/mobile/longlink/b/b/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/longlink/service/a;Lcom/alipay/mobile/longlink/b/b/b;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/longlink/service/c;-><init>(Lcom/alipay/mobile/longlink/service/a;Lcom/alipay/mobile/longlink/b/b/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "===== ConnectTask.run()====="

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "===== ConnectTask connManager="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/c;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->o()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/service/a;->b(Lcom/alipay/mobile/longlink/service/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/service/a;->c(Lcom/alipay/mobile/longlink/service/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/service/a;->d(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/service/a;->d(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/service/a;->e(Lcom/alipay/mobile/longlink/service/a;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/longlink/b/a/a/c;

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/a/d;->c:Lcom/alipay/mobile/longlink/b/a/a/d;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v2}, Lcom/alipay/mobile/longlink/service/a;->d(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v3}, Lcom/alipay/mobile/longlink/service/a;->e(Lcom/alipay/mobile/longlink/service/a;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/longlink/b/a/a/c;-><init>(Lcom/alipay/mobile/longlink/b/a/a/d;Ljava/lang/String;I)V

    :goto_0
    new-instance v1, Lcom/alipay/mobile/longlink/b/a/c;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v2}, Lcom/alipay/mobile/longlink/service/a;->f(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v3}, Lcom/alipay/mobile/longlink/service/a;->g(Lcom/alipay/mobile/longlink/service/a;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/mobile/longlink/b/a/c;-><init>(Ljava/lang/String;ILcom/alipay/mobile/longlink/b/a/a/c;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/service/a;->h(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/service/a;->h(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/longlink/b/a/d;->a:Lcom/alipay/mobile/longlink/b/a/d;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/b/a/c;->a(Lcom/alipay/mobile/longlink/b/a/d;)V

    :goto_1
    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/b/a/c;->e()V

    new-instance v0, Lcom/alipay/mobile/longlink/b/a/k;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;-><init>(Lcom/alipay/mobile/longlink/b/a/c;)V

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/c;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Lcom/alipay/mobile/longlink/b/a/k;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/c;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v1}, Lcom/alipay/mobile/longlink/service/a;->i(Lcom/alipay/mobile/longlink/service/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;->a(I)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/c;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/c;->c:Lcom/alipay/mobile/longlink/b/b/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/b/a;)V

    :goto_2
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/mobile/longlink/b/a/a/c;

    sget-object v1, Lcom/alipay/mobile/longlink/b/a/a/d;->a:Lcom/alipay/mobile/longlink/b/a/a/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/longlink/b/a/a/c;-><init>(Lcom/alipay/mobile/longlink/b/a/a/d;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/longlink/b/a/d;->c:Lcom/alipay/mobile/longlink/b/a/d;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/b/a/c;->a(Lcom/alipay/mobile/longlink/b/a/d;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "The connManager is connected now."

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
