.class public Lcom/squareup/picasso/RequestBuilder;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/squareup/picasso/c;

.field private final b:Lcom/squareup/picasso/Picasso;

.field private final c:Landroid/net/Uri;

.field private final d:I

.field private e:Ljava/util/List;

.field private f:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/RequestBuilder;->b:Lcom/squareup/picasso/Picasso;

    iput-object v0, p0, Lcom/squareup/picasso/RequestBuilder;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/picasso/RequestBuilder;->d:I

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/RequestBuilder;->b:Lcom/squareup/picasso/Picasso;

    iput-object p2, p0, Lcom/squareup/picasso/RequestBuilder;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/picasso/RequestBuilder;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/picasso/Target;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestBuilder;->c:Landroid/net/Uri;

    iget v1, p0, Lcom/squareup/picasso/RequestBuilder;->d:I

    iget-object v2, p0, Lcom/squareup/picasso/RequestBuilder;->a:Lcom/squareup/picasso/c;

    iget-object v3, p0, Lcom/squareup/picasso/RequestBuilder;->e:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/l;->a(Landroid/net/Uri;ILcom/squareup/picasso/c;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/picasso/RequestBuilder;->b:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/squareup/picasso/RequestBuilder;->c:Landroid/net/Uri;

    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/squareup/picasso/Target;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/squareup/picasso/k;

    iget-object v1, p0, Lcom/squareup/picasso/RequestBuilder;->b:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/squareup/picasso/RequestBuilder;->c:Landroid/net/Uri;

    iget v3, p0, Lcom/squareup/picasso/RequestBuilder;->d:I

    iget-object v5, p0, Lcom/squareup/picasso/RequestBuilder;->a:Lcom/squareup/picasso/c;

    iget-object v6, p0, Lcom/squareup/picasso/RequestBuilder;->e:Ljava/util/List;

    iget-boolean v7, p0, Lcom/squareup/picasso/RequestBuilder;->f:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/squareup/picasso/k;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;ILcom/squareup/picasso/Target;Lcom/squareup/picasso/c;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/squareup/picasso/RequestBuilder;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/e;)V

    goto :goto_0
.end method
