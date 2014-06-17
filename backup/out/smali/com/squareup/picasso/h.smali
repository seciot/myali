.class final Lcom/squareup/picasso/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/squareup/picasso/Cache;

.field final b:Landroid/os/Handler;

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:I

.field j:I


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Cache;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/h;->a:Lcom/squareup/picasso/Cache;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Picasso-Stats"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/squareup/picasso/i;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/squareup/picasso/i;-><init>(Lcom/squareup/picasso/h;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/squareup/picasso/h;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 4

    invoke-static {p1}, Lcom/squareup/picasso/l;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lcom/squareup/picasso/h;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/squareup/picasso/h;->b:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/picasso/h;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method final a(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/h;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method final b(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/h;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method
