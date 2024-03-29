.class Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;
.super Lcom/nineoldandroids/view/ViewPropertyAnimator;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Landroid/view/animation/Interpolator;

.field private g:Z

.field private h:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

.field private i:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;-><init>()V

    iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d:J

    iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->e:Z

    iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->g:Z

    iput-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->h:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-direct {v0, p0, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;-><init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->i:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;-><init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->j:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(I)F
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    goto :goto_0

    :sswitch_9
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v4

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    iget v1, v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mNameConstant:I

    or-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/util/HashMap;

    new-instance v2, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    invoke-direct {v2, v3, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->i:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->i:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->e:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d:J

    invoke-virtual {v4, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    :cond_1
    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b:J

    invoke-virtual {v4, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    :cond_2
    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_3
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(IF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(I)F

    move-result v0

    sub-float v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IFF)V

    return-void
.end method

.method private a(IFF)V
    .locals 5

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator;

    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    invoke-virtual {v1, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->cancel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v1, v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I

    if-nez v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->cancel()V

    :cond_1
    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    invoke-direct {v0, p1, p2, p3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;-><init>(IFF)V

    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)V
    .locals 0

    invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a()V

    return-void
.end method

.method static synthetic access$200(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->h:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 0

    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->h:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;IF)V
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method private b(IF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(I)F

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IFF)V

    return-void
.end method


# virtual methods
.method public alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public alphaBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b:J

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartDelay()J
    .locals 2

    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public rotation(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public rotationBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public rotationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public rotationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public rotationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public rotationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public scaleX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public scaleXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public scaleY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public scaleYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c:Z

    iput-wide p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b:J

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->g:Z

    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->f:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->h:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->e:Z

    iput-wide p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d:J

    return-object p0
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a()V

    return-void
.end method

.method public translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public translationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public translationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public x(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public xBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public y(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public yBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method
