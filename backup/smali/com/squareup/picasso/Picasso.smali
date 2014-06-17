.class public Lcom/squareup/picasso/Picasso;
.super Ljava/lang/Object;


# static fields
.field static b:Lcom/squareup/picasso/Picasso;

.field private static final k:Ljava/lang/Object;


# instance fields
.field final a:Landroid/os/Handler;

.field final c:Landroid/content/Context;

.field final d:Lcom/squareup/picasso/Loader;

.field final e:Ljava/util/concurrent/ExecutorService;

.field final f:Lcom/squareup/picasso/Cache;

.field final g:Lcom/squareup/picasso/Picasso$Listener;

.field final h:Lcom/squareup/picasso/h;

.field final i:Ljava/util/Map;

.field j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/Picasso;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/squareup/picasso/Picasso;->b:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Loader;Ljava/util/concurrent/ExecutorService;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Picasso$Listener;Lcom/squareup/picasso/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/picasso/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/b;-><init>(Lcom/squareup/picasso/Picasso;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/squareup/picasso/Picasso;->d:Lcom/squareup/picasso/Loader;

    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->e:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/Cache;

    iput-object p5, p0, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/Picasso$Listener;

    iput-object p6, p0, Lcom/squareup/picasso/Picasso;->h:Lcom/squareup/picasso/h;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lcom/squareup/picasso/c;->inJustDecodeBounds:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/squareup/picasso/l;->a(Lcom/squareup/picasso/c;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/squareup/picasso/c;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p0, :cond_c

    iget v0, p0, Lcom/squareup/picasso/c;->a:I

    iget v1, p0, Lcom/squareup/picasso/c;->b:I

    iget v6, p0, Lcom/squareup/picasso/c;->h:F

    cmpl-float v7, v6, v9

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/squareup/picasso/c;->k:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/squareup/picasso/c;->i:F

    iget v8, p0, Lcom/squareup/picasso/c;->j:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/squareup/picasso/c;->d:Z

    if-eqz v6, :cond_7

    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    cmpl-float v6, v0, v1

    if-lez v6, :cond_6

    int-to-float v6, v2

    div-float/2addr v1, v0

    mul-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    move v10, v3

    move v3, v2

    move v2, v10

    :goto_1
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v0, v4

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_2
    iget v1, p0, Lcom/squareup/picasso/c;->f:F

    iget v6, p0, Lcom/squareup/picasso/c;->g:F

    cmpl-float v7, v1, v9

    if-nez v7, :cond_1

    cmpl-float v7, v6, v9

    if-eqz v7, :cond_2

    :cond_1
    invoke-virtual {v5, v1, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_2
    move v1, v0

    move v10, v4

    move v4, v2

    move v2, v10

    :goto_3
    if-eqz p2, :cond_3

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    sget-object v7, Lcom/squareup/picasso/Picasso;->k:Ljava/lang/Object;

    monitor-enter v7

    const/4 v6, 0x0

    move-object v0, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_5
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    :cond_6
    int-to-float v6, v3

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_1

    :cond_7
    iget-boolean v6, p0, Lcom/squareup/picasso/c;->e:Z

    if-eqz v6, :cond_9

    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    cmpg-float v6, v0, v1

    if-gez v6, :cond_8

    :goto_4
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v0, v4

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    if-ne v0, v3, :cond_a

    if-eq v1, v2, :cond_b

    :cond_a
    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b
    move v0, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_c
    move v1, v4

    move v10, v4

    move v4, v2

    move v2, v10

    goto :goto_3
.end method

.method private static a(Ljava/io/InputStream;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/squareup/picasso/c;->inJustDecodeBounds:Z

    :cond_1
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 1

    sget-object v0, Lcom/squareup/picasso/Picasso;->b:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/Picasso;->b:Lcom/squareup/picasso/Picasso;

    :cond_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->b:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Lcom/squareup/picasso/RequestBuilder;
    .locals 1

    new-instance v0, Lcom/squareup/picasso/RequestBuilder;

    invoke-direct {v0, p0, p1}, Lcom/squareup/picasso/RequestBuilder;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V

    return-object v0
.end method

.method private a(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/e;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/picasso/e;->l:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/squareup/picasso/e;->l:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/squareup/picasso/e;->b:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iput-boolean v2, v0, Lcom/squareup/picasso/e;->p:Z

    goto :goto_0
.end method

.method private e(Lcom/squareup/picasso/e;)Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v0, p1, Lcom/squareup/picasso/e;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->h:Lcom/squareup/picasso/h;

    iget-object v0, v0, Lcom/squareup/picasso/h;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->f(Lcom/squareup/picasso/e;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p1, Lcom/squareup/picasso/e;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/Cache;

    iget-object v2, p1, Lcom/squareup/picasso/e;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/squareup/picasso/Cache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/Cache;

    iget-object v1, p1, Lcom/squareup/picasso/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Cache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/squareup/picasso/g;->a:Lcom/squareup/picasso/g;

    iput-object v1, p1, Lcom/squareup/picasso/e;->n:Lcom/squareup/picasso/g;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to decode request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->h:Lcom/squareup/picasso/h;

    invoke-virtual {v1}, Lcom/squareup/picasso/h;->a()V

    goto :goto_1
.end method

.method private f(Lcom/squareup/picasso/e;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v5, p1, Lcom/squareup/picasso/e;->e:Lcom/squareup/picasso/c;

    iget-object v4, p1, Lcom/squareup/picasso/e;->b:Landroid/net/Uri;

    iget v0, p1, Lcom/squareup/picasso/e;->c:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v5, :cond_0

    iget-boolean v4, v5, Lcom/squareup/picasso/c;->inJustDecodeBounds:Z

    if-eqz v4, :cond_0

    invoke-static {v1, v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/squareup/picasso/l;->a(Lcom/squareup/picasso/c;)V

    :cond_0
    invoke-static {v1, v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v0, Lcom/squareup/picasso/g;->b:Lcom/squareup/picasso/g;

    iput-object v0, p1, Lcom/squareup/picasso/e;->n:Lcom/squareup/picasso/g;

    move v4, v2

    :goto_0
    if-nez v1, :cond_d

    move-object v0, v3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v6, "photo"

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, v4}, Lcom/squareup/picasso/l;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/squareup/picasso/Picasso;->a(Ljava/io/InputStream;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, v2

    :goto_2
    sget-object v4, Lcom/squareup/picasso/g;->b:Lcom/squareup/picasso/g;

    iput-object v4, p1, Lcom/squareup/picasso/e;->n:Lcom/squareup/picasso/g;

    move v4, v1

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-static {v0, v4}, Lcom/squareup/picasso/l;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v4, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v4, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v4, Lcom/squareup/picasso/g;->b:Lcom/squareup/picasso/g;

    iput-object v4, p1, Lcom/squareup/picasso/e;->n:Lcom/squareup/picasso/g;

    move v4, v0

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v4, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v0, Lcom/squareup/picasso/g;->b:Lcom/squareup/picasso/g;

    iput-object v0, p1, Lcom/squareup/picasso/e;->n:Lcom/squareup/picasso/g;

    move v4, v2

    goto :goto_0

    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->d:Lcom/squareup/picasso/Loader;

    iget v0, p1, Lcom/squareup/picasso/e;->o:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-interface {v1, v4, v0}, Lcom/squareup/picasso/Loader;->a(Landroid/net/Uri;Z)Lcom/squareup/picasso/Loader$Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_9

    if-eqz v1, :cond_7

    iget-object v0, v1, Lcom/squareup/picasso/Loader$Response;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, v1, Lcom/squareup/picasso/Loader$Response;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_4
    move-object v0, v3

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    :try_start_2
    iget-object v0, v1, Lcom/squareup/picasso/Loader$Response;->a:Ljava/io/InputStream;

    invoke-static {v0, v5}, Lcom/squareup/picasso/Picasso;->a(Ljava/io/InputStream;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    if-eqz v1, :cond_a

    iget-object v0, v1, Lcom/squareup/picasso/Loader$Response;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    :try_start_3
    iget-object v0, v1, Lcom/squareup/picasso/Loader$Response;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_a
    :goto_5
    iget-boolean v0, v1, Lcom/squareup/picasso/Loader$Response;->b:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/picasso/g;->b:Lcom/squareup/picasso/g;

    :goto_6
    iput-object v0, p1, Lcom/squareup/picasso/e;->n:Lcom/squareup/picasso/g;

    move-object v1, v4

    move v4, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v3, :cond_b

    iget-object v1, v3, Lcom/squareup/picasso/Loader$Response;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_b

    :try_start_4
    iget-object v1, v3, Lcom/squareup/picasso/Loader$Response;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_b
    :goto_8
    throw v0

    :cond_c
    sget-object v0, Lcom/squareup/picasso/g;->c:Lcom/squareup/picasso/g;

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->h:Lcom/squareup/picasso/h;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/h;->a(Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_e

    iget-boolean v0, v5, Lcom/squareup/picasso/c;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/squareup/picasso/e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    iput v3, v5, Lcom/squareup/picasso/c;->a:I

    iput v0, v5, Lcom/squareup/picasso/c;->b:I

    :cond_e
    if-nez v5, :cond_f

    if-eqz v4, :cond_15

    :cond_f
    invoke-static {v5, v1, v4}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/c;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_9
    iget-object v4, p1, Lcom/squareup/picasso/e;->f:Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, v0

    :goto_a
    if-ge v2, v5, :cond_14

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Transformation "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " returned null after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-ne v3, v1, :cond_12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_12

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Transformation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " returned input Bitmap but recycled it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eq v3, v1, :cond_13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Transformation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mutated input Bitmap but failed to recycle the original."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto/16 :goto_a

    :cond_14
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->h:Lcom/squareup/picasso/h;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/h;->b(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :cond_15
    move-object v0, v1

    goto/16 :goto_9
.end method


# virtual methods
.method final a(Ljava/lang/Object;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/Cache;

    invoke-interface {v0, p3}, Lcom/squareup/picasso/Cache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;Landroid/net/Uri;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->h:Lcom/squareup/picasso/h;

    invoke-virtual {v1}, Lcom/squareup/picasso/h;->a()V

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/io/File;)Lcom/squareup/picasso/RequestBuilder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/squareup/picasso/RequestBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/RequestBuilder;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/RequestBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/squareup/picasso/RequestBuilder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/squareup/picasso/RequestBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/RequestBuilder;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/RequestBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Lcom/squareup/picasso/e;)V
    .locals 2

    invoke-virtual {p1}, Lcom/squareup/picasso/e;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p1, Lcom/squareup/picasso/e;->b:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/squareup/picasso/e;->l:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method final b(Lcom/squareup/picasso/e;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->e(Lcom/squareup/picasso/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iput-object v0, p1, Lcom/squareup/picasso/e;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/Picasso$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/squareup/picasso/e;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/Picasso$Listener;

    iget-object v1, p1, Lcom/squareup/picasso/e;->b:Landroid/net/Uri;

    invoke-interface {v0}, Lcom/squareup/picasso/Picasso$Listener;->a()V

    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method final c(Lcom/squareup/picasso/e;)V
    .locals 2

    iget-boolean v0, p1, Lcom/squareup/picasso/e;->p:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/squareup/picasso/e;->o:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/squareup/picasso/e;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/squareup/picasso/e;->o:I

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/e;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/e;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/squareup/picasso/e;->c()V

    goto :goto_0
.end method

.method final d(Lcom/squareup/picasso/e;)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/e;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/squareup/picasso/e;->c()V

    return-void
.end method
