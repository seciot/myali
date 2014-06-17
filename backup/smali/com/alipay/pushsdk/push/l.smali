.class final Lcom/alipay/pushsdk/push/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/j;

.field final synthetic b:Lcom/alipay/pushsdk/push/j;

.field private c:Lcom/alipay/pushsdk/push/b/a;


# direct methods
.method private constructor <init>(Lcom/alipay/pushsdk/push/j;Lcom/alipay/pushsdk/push/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    iput-object p2, p0, Lcom/alipay/pushsdk/push/l;->c:Lcom/alipay/pushsdk/push/b/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/pushsdk/push/j;Lcom/alipay/pushsdk/push/b/b;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/pushsdk/push/l;-><init>(Lcom/alipay/pushsdk/push/j;Lcom/alipay/pushsdk/push/b/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "===== ConnectTask.run()====="

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {}, Lcom/alipay/pushsdk/push/j;->z()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "===== ConnectTask pushManager="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->x()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->r()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/j;->d(J)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->b(Lcom/alipay/pushsdk/push/j;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->c(Lcom/alipay/pushsdk/push/j;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->d(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->d(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->e(Lcom/alipay/pushsdk/push/j;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/pushsdk/push/a/a/c;

    sget-object v1, Lcom/alipay/pushsdk/push/a/a/d;->c:Lcom/alipay/pushsdk/push/a/a/d;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/j;->d(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/j;->e(Lcom/alipay/pushsdk/push/j;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/pushsdk/push/a/a/c;-><init>(Lcom/alipay/pushsdk/push/a/a/d;Ljava/lang/String;I)V

    :goto_0
    new-instance v1, Lcom/alipay/pushsdk/push/a/c;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/j;->f(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/j;->g(Lcom/alipay/pushsdk/push/j;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/pushsdk/push/a/c;-><init>(Ljava/lang/String;ILcom/alipay/pushsdk/push/a/a/c;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->h(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/j;->h(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/push/a/d;->a:Lcom/alipay/pushsdk/push/a/d;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/a/c;->a(Lcom/alipay/pushsdk/push/a/d;)V

    :goto_1
    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/a/c;->f()V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/a/c;->e()V

    new-instance v0, Lcom/alipay/pushsdk/push/a/m;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/a/m;-><init>(Lcom/alipay/pushsdk/push/a/c;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/j;->a(Lcom/alipay/pushsdk/push/a/m;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/j;->i(Lcom/alipay/pushsdk/push/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->b(I)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->b:Lcom/alipay/pushsdk/push/j;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/j;->j(Lcom/alipay/pushsdk/push/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->a(I)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->c:Lcom/alipay/pushsdk/push/b/a;

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/b/a;)V

    :goto_2
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/a/a/c;

    sget-object v1, Lcom/alipay/pushsdk/push/a/a/d;->a:Lcom/alipay/pushsdk/push/a/a/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/pushsdk/push/a/a/c;-><init>(Lcom/alipay/pushsdk/push/a/a/d;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/push/a/d;->c:Lcom/alipay/pushsdk/push/a/d;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/a/c;->a(Lcom/alipay/pushsdk/push/a/d;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->y()V

    goto :goto_2
.end method
