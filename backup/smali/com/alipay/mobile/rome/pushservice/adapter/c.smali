.class final Lcom/alipay/mobile/rome/pushservice/adapter/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/rome/pushservice/adapter/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iput-object p2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-boolean v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iput-boolean v2, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->e:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-boolean v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->e:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v2, v2, Lcom/alipay/mobile/rome/pushservice/adapter/b;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Lcom/alipay/mobile/rome/pushservice/adapter/b;Ljava/io/File;)V

    goto :goto_1
.end method
