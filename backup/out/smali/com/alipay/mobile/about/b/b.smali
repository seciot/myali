.class public Lcom/alipay/mobile/about/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/about/b/b$c;,
        Lcom/alipay/mobile/about/b/b$a;,
        Lcom/alipay/mobile/about/b/b$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:I


# instance fields
.field private b:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/about/b/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/about/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/about/b/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/about/b/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/alipay/mobile/about/b/b;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Lcom/alipay/mobile/about/b/c;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/about/b/c;-><init>(Lcom/alipay/mobile/about/b/b;I)V

    iput-object v1, p0, Lcom/alipay/mobile/about/b/b;->e:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/b/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/widget/ImageView;)Lcom/alipay/mobile/about/b/b$b;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/about/b/b;->b(Landroid/widget/ImageView;)Lcom/alipay/mobile/about/b/b$b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/about/b/b$b;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/about/b/b$b;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/about/b/b;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alipay/mobile/about/b/b;->c:I

    iput-boolean v1, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/about/b/b;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alipay/mobile/about/b/b;->c:I

    iput-boolean v1, p0, Lcom/alipay/mobile/about/b/b$b;->b:Z

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/about/b/b$c;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    move v3, v0

    :goto_1
    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/b/b$c;

    iget-object v1, v0, Lcom/alipay/mobile/about/b/b$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alipay/mobile/about/b/b$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/about/b/b$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/alipay/mobile/about/b/b$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/about/b/b;)Landroid/support/v4/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->e:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method private static b(Landroid/widget/ImageView;)Lcom/alipay/mobile/about/b/b$b;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/alipay/mobile/about/b/b$a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/about/b/b$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/b/b$a;->a()Lcom/alipay/mobile/about/b/b$b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()I
    .locals 2

    sget v0, Lcom/alipay/mobile/about/b/b;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/about/b/b;->c:I

    return v0
.end method

.method static synthetic d()I
    .locals 2

    sget v0, Lcom/alipay/mobile/about/b/b;->c:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/alipay/mobile/about/b/b;->c:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    sget v0, Lcom/alipay/mobile/about/b/b;->c:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/b/b$c;

    iget-object v1, v0, Lcom/alipay/mobile/about/b/b$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/alipay/mobile/about/b/b;->b(Landroid/widget/ImageView;)Lcom/alipay/mobile/about/b/b$b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/alipay/mobile/about/b/b$b;->a(Lcom/alipay/mobile/about/b/b$b;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/alipay/mobile/about/b/b$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/about/b/b$b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/alipay/mobile/about/b/b$c;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/about/b/b$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/b/b;->a(Lcom/alipay/mobile/about/b/b$c;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v3

    goto :goto_1

    :catch_1
    move-exception v1

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/about/b/b;->a(Lcom/alipay/mobile/about/b/b$b;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/about/b/b;->a(Lcom/alipay/mobile/about/b/b$b;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->e:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/about/b/b;->b(Landroid/widget/ImageView;)Lcom/alipay/mobile/about/b/b$b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/alipay/mobile/about/b/b$b;->a(Lcom/alipay/mobile/about/b/b$b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/about/b/b;->a(Lcom/alipay/mobile/about/b/b$b;)V

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/about/b/b$b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/about/b/b$b;-><init>(Lcom/alipay/mobile/about/b/b;Landroid/widget/ImageView;)V

    new-instance v1, Lcom/alipay/mobile/about/b/b$a;

    iget-object v2, p0, Lcom/alipay/mobile/about/b/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3, v0}, Lcom/alipay/mobile/about/b/b$a;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/alipay/mobile/about/b/b$b;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/alipay/mobile/about/b/b$c;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/about/b/b$c;-><init>(Lcom/alipay/mobile/about/b/b;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/b/b;->a(Lcom/alipay/mobile/about/b/b$c;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/b/b;->a()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/about/b/b;->e:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    return-void
.end method
