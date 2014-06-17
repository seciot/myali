.class final Lcom/alipay/mobile/about/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:[Ljava/io/File;

.field final synthetic c:I

.field final synthetic d:[Landroid/graphics/Bitmap;

.field final synthetic e:I

.field final synthetic f:Ljava/util/concurrent/CountDownLatch;

.field final synthetic g:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;Landroid/net/Uri;[Ljava/io/File;I[Landroid/graphics/Bitmap;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/w;->g:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/w;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/alipay/mobile/about/ui/w;->b:[Ljava/io/File;

    iput p4, p0, Lcom/alipay/mobile/about/ui/w;->c:I

    iput-object p5, p0, Lcom/alipay/mobile/about/ui/w;->d:[Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/alipay/mobile/about/ui/w;->e:I

    iput-object p7, p0, Lcom/alipay/mobile/about/ui/w;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/w;->g:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/w;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LWThumbnailUtils;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/w;->b:[Ljava/io/File;

    iget v3, p0, Lcom/alipay/mobile/about/ui/w;->c:I

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/w;->d:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alipay/mobile/about/ui/w;->c:I

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/w;->g:Lcom/alipay/mobile/about/ui/FeedAssistantActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->g(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/about/ui/x;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/about/ui/x;-><init>(Lcom/alipay/mobile/about/ui/w;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/w;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
