.class public final Lcom/alipay/mobile/about/ui/ag;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/about/ui/ag;


# instance fields
.field private b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

.field private c:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/about/ui/ag;
    .locals 3

    const-class v1, Lcom/alipay/mobile/about/ui/ag;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/about/ui/ag;->a:Lcom/alipay/mobile/about/ui/ag;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "FloatWindowManager must be create by call createInstance(Context context)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/about/ui/ag;->a:Lcom/alipay/mobile/about/ui/ag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/alipay/mobile/about/ui/ag;
    .locals 2

    const-class v1, Lcom/alipay/mobile/about/ui/ag;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/about/ui/ag;->a:Lcom/alipay/mobile/about/ui/ag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/about/ui/ag;

    invoke-direct {v0}, Lcom/alipay/mobile/about/ui/ag;-><init>()V

    sput-object v0, Lcom/alipay/mobile/about/ui/ag;->a:Lcom/alipay/mobile/about/ui/ag;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/about/ui/ag;->a:Lcom/alipay/mobile/about/ui/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->f:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->f:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/ag;->e(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    if-nez v3, :cond_1

    new-instance v3, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    sget v4, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->windowViewWidth:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    sget v4, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->windowViewHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/ag;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/ag;->e(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/ag;->e(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->c:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    if-nez v3, :cond_1

    new-instance v3, Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/about/ui/FloatWindowBigView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->c:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v1, v1, 0x2

    sget v4, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->viewWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->viewHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->viewWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->viewHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->c:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/ag;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->b:Lcom/alipay/mobile/about/ui/FloatWindowSmallView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->c:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->c:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/ag;->e(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ag;->c:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/ag;->c:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    :cond_0
    return-void
.end method
