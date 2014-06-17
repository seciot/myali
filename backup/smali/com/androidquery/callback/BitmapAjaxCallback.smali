.class public Lcom/androidquery/callback/BitmapAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/androidquery/callback/BitmapAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Z

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static x:Landroid/graphics/Bitmap;

.field private static y:Landroid/graphics/Bitmap;


# instance fields
.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Ljava/io/File;

.field private o:Landroid/graphics/Bitmap;

.field private p:I

.field private q:Landroid/graphics/Bitmap;

.field private r:F

.field private s:I

.field private t:Z

.field private u:F

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->a:I

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->b:I

    const/16 v0, 0x9c4

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->c:I

    const v0, 0x27100

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->d:I

    const v0, 0xf4240

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->e:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->x:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->y:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    iput-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->t:Z

    const v0, 0x7f7fffff

    iput v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->u:F

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p6

    iget-boolean v5, v0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    move-object/from16 v0, p6

    iget-boolean v6, v0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    move-object/from16 v0, p6

    iget v7, v0, Lcom/androidquery/callback/ImageOptions;->targetWidth:I

    move-object/from16 v0, p6

    iget v8, v0, Lcom/androidquery/callback/ImageOptions;->fallback:I

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/androidquery/callback/ImageOptions;->preset:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    iget v10, v0, Lcom/androidquery/callback/ImageOptions;->animation:I

    move-object/from16 v0, p6

    iget v11, v0, Lcom/androidquery/callback/ImageOptions;->ratio:F

    move-object/from16 v0, p6

    iget v12, v0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/androidquery/callback/ImageOptions;->policy:I

    move-object/from16 v0, p6

    iget v0, v0, Lcom/androidquery/callback/ImageOptions;->round:I

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    invoke-static/range {v1 .. v18}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move/from16 v0, p15

    invoke-static {p3, p6, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const v1, 0x40ff0001

    invoke-virtual {p2, v1, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p12

    invoke-static {v0, p3, v1}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v8, 0x4

    move-object v1, p2

    move-object/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-static/range {v1 .. v8}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v2}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    invoke-virtual {v2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->policy(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p15

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->round(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p17

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->networkUrl(Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p16, :cond_2

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {v2, p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .locals 6

    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->l:I

    iget-boolean v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->t:Z

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->s:I

    iget-boolean v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->w:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x40ff0001

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p1, p2, p3, p4, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method

.method public static clearCache()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->h:Ljava/util/Map;

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->g:Ljava/util/Map;

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->i:Ljava/util/Map;

    return-void
.end method

.method protected static clearTasks()V
    .locals 1

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "decode image failed"

    invoke-static {v1, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    :try_start_2
    invoke-static {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_1
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static fadeIn(II)Z
    .locals 2

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    :pswitch_2
    if-ne p1, v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->x:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static getBCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->b:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->d:I

    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->e:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->h:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->h:Ljava/util/Map;

    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->x:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getFallback()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->m:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static getICache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/androidquery/util/BitmapCache;

    const/16 v1, 0x64

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->d:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->i:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->i:Ljava/util/Map;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-lez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1, v2, v2, v0, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    :cond_0
    return-object v0
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    if-lez p2, :cond_3

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v2, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez p3, :cond_1

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    invoke-static {v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->sampleSize(II)I

    move-result v2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    :try_start_0
    invoke-static {p0, p1, v0, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-lez p4, :cond_2

    invoke-static {v0, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static getRotateMatrix(I)Landroid/graphics/Matrix;
    .locals 6

    const/high16 v5, 0x4334

    const/high16 v4, 0x42b4

    const/high16 v3, -0x3d4c

    const/high16 v2, 0x3f80

    const/high16 v1, -0x4080

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v5, p1

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v6, -0xbdbdbe

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static getSCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->a:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->c:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->g:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static isMemoryCached(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/androidquery/util/RatioDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/util/RatioDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getLastStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    sput-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->i:Ljava/util/Map;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V
    .locals 2

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    if-eqz p4, :cond_3

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    :goto_1
    if-gtz p1, :cond_2

    if-lez p2, :cond_5

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->c:I

    if-gt v0, v1, :cond_4

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    const v2, 0x40ff0001

    const/4 v1, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->cacheAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->q:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method private static rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-lez v0, :cond_0

    invoke-static {v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRotateMatrix(I)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string/jumbo v1, "before"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "after"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq p1, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_1
.end method

.method private static sampleSize(II)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_0

    div-int/lit8 p0, p0, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 8

    if-nez p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->r:F

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->u:F

    invoke-static {p2, p3, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->q:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->m:I

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->p:I

    iget v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->r:F

    iget v6, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->u:F

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v7

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    goto :goto_0
.end method

.method private static setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v0, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p4, p7}, Lcom/androidquery/callback/BitmapAjaxCallback;->fadeIn(II)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    if-lez p4, :cond_4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static setCacheLimit(I)V
    .locals 0

    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->b:I

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method

.method public static setDelayWrite(Z)V
    .locals 0

    sput-boolean p0, Lcom/androidquery/callback/BitmapAjaxCallback;->f:Z

    return-void
.end method

.method public static setIconCacheLimit(I)V
    .locals 0

    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->a:I

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .locals 0

    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->e:I

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method

.method public static setPixelLimit(I)V
    .locals 0

    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->d:I

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method

.method public static setSmallPixel(I)V
    .locals 0

    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->c:I

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method


# virtual methods
.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->n:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->n:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->u:F

    return-object p0
.end method

.method public animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->p:I

    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    const v3, 0x40ff0001

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    sget-object v2, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->o:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 8

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/WeakHashMap;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    iput-object p3, v1, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0
.end method

.method protected callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->m:I

    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->n:Ljava/io/File;

    return-object p0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method protected isStreamingContent()Z
    .locals 1

    sget-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->o:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->l:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->s:I

    invoke-static {p1, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->l:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->s:I

    iget-boolean v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Z

    invoke-static {p1, v0, v1, p2, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected bridge synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->q:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->r:F

    return-object p0
.end method

.method public rotate(Z)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput-boolean p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->w:Z

    return-object p0
.end method

.method public round(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->s:I

    return-object p0
.end method

.method protected skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->l:I

    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->m:I

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getFallback()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Z

    :cond_2
    return-object v0

    :cond_3
    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->m:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->m:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    :cond_4
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->y:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->m:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->q:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
