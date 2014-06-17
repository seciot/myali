.class final Lcom/alipay/mobile/about/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:[Ljava/io/File;

.field final synthetic c:[Landroid/graphics/Bitmap;

.field final synthetic d:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;Ljava/util/concurrent/CountDownLatch;[Ljava/io/File;[Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/u;->d:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/u;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/alipay/mobile/about/ui/u;->b:[Ljava/io/File;

    iput-object p4, p0, Lcom/alipay/mobile/about/ui/u;->c:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/u;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/u;->d:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->g(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/about/ui/v;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/v;-><init>(Lcom/alipay/mobile/about/ui/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
