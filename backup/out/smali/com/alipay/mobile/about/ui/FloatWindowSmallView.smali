.class public Lcom/alipay/mobile/about/ui/FloatWindowSmallView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static a:I

.field public static windowViewHeight:I

.field public static windowViewWidth:I


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->K:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fH:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sput v0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->windowViewWidth:I

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->windowViewHeight:I

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->k:I

    return-void
.end method

.method private a()I
    .locals 3

    sget v0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->a:I

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->a:I

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(FF)Z
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->j:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->e:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->f:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->e:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->f:F

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->e:F

    iget v2, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->i:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->f:F

    iget v2, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->j:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->g:F

    iget v1, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->e:F

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->h:F

    iget v1, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->f:F

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->e:F

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->k:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->k:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/FloatWindowSmallView;->d:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method
