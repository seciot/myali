.class final Lcom/squareup/picasso/k;
.super Lcom/squareup/picasso/e;


# instance fields
.field private final q:Ljava/lang/ref/WeakReference;

.field private final r:Lcom/squareup/picasso/Target;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;ILcom/squareup/picasso/Target;Lcom/squareup/picasso/c;Ljava/util/List;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/e;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;ILcom/squareup/picasso/c;Ljava/util/List;Z)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/squareup/picasso/k;->q:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/k;->r:Lcom/squareup/picasso/Target;

    return-void
.end method

.method private d()Lcom/squareup/picasso/Target;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/k;->r:Lcom/squareup/picasso/Target;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/k;->r:Lcom/squareup/picasso/Target;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/k;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Target;

    goto :goto_0
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/squareup/picasso/k;->d()Lcom/squareup/picasso/Target;

    move-result-object v0

    return-object v0
.end method

.method final b()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/picasso/k;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Attempted to complete request with no result!\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/squareup/picasso/k;->d()Lcom/squareup/picasso/Target;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/squareup/picasso/k;->m:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Target;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/squareup/picasso/k;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Target callback must not recycle bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method final c()V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/picasso/k;->d()Lcom/squareup/picasso/Target;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/squareup/picasso/Target;->a()V

    goto :goto_0
.end method
