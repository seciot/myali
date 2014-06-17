.class final Lcom/alipay/mobile/about/b/b$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/about/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/alipay/mobile/about/b/b;

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/about/b/b;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/about/b/b$b;->c:Lcom/alipay/mobile/about/b/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->a:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/about/b/b$b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/about/b/b$b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/about/b/b$b;->a()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->c:Lcom/alipay/mobile/about/b/b;

    invoke-static {v0}, Lcom/alipay/mobile/about/b/b;->a(Lcom/alipay/mobile/about/b/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/FileUtil;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/album/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/alipay/mobile/about/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->c:Lcom/alipay/mobile/about/b/b;

    invoke-static {v0}, Lcom/alipay/mobile/about/b/b;->a(Lcom/alipay/mobile/about/b/b;)Landroid/content/Context;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/security/securitycommon/LWThumbnailUtils;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/album"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/alipay/mobile/about/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x50

    invoke-static {v4, v5, v0, v6}, Lcom/alipay/mobile/security/securitycommon/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/album/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/alipay/mobile/about/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    :goto_1
    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private a()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alipay/mobile/about/b/b;->a(Landroid/widget/ImageView;)Lcom/alipay/mobile/about/b/b$b;

    move-result-object v1

    if-ne p0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/about/b/b$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/b/b$b;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/about/b/b;->d()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->c:Lcom/alipay/mobile/about/b/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/b/b;->a()V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/about/b/b;->d()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/about/b/b$b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/about/b/b$b;->a()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/about/b/b$b;->c:Lcom/alipay/mobile/about/b/b;

    invoke-static {v1}, Lcom/alipay/mobile/about/b/b;->b(Lcom/alipay/mobile/about/b/b;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/about/b/b$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/about/b/b$b;->c:Lcom/alipay/mobile/about/b/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/b/b;->a()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/about/b/b;->c()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->a:Z

    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
