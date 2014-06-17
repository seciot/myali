.class public final Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;
.super Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;
.source "C2CConfirmActivity_.java"


# instance fields
.field private H:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->H:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/alipay/mobile/onsitepay/d;->ao:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    .line 46
    sget v0, Lcom/alipay/mobile/onsitepay/d;->A:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->r:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 47
    sget v0, Lcom/alipay/mobile/onsitepay/d;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 48
    sget v0, Lcom/alipay/mobile/onsitepay/d;->W:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->B:Landroid/widget/RelativeLayout;

    .line 49
    sget v0, Lcom/alipay/mobile/onsitepay/d;->M:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->z:Landroid/widget/LinearLayout;

    .line 50
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aD:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->F:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 51
    sget v0, Lcom/alipay/mobile/onsitepay/d;->u:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 52
    sget v0, Lcom/alipay/mobile/onsitepay/d;->D:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 53
    sget v0, Lcom/alipay/mobile/onsitepay/d;->t:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->v:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 54
    sget v0, Lcom/alipay/mobile/onsitepay/d;->L:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->y:Landroid/widget/LinearLayout;

    .line 55
    sget v0, Lcom/alipay/mobile/onsitepay/d;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->D:Landroid/widget/LinearLayout;

    .line 56
    sget v0, Lcom/alipay/mobile/onsitepay/d;->E:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->u:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 57
    sget v0, Lcom/alipay/mobile/onsitepay/d;->y:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 58
    sget v0, Lcom/alipay/mobile/onsitepay/d;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 59
    sget v0, Lcom/alipay/mobile/onsitepay/d;->C:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 60
    sget v0, Lcom/alipay/mobile/onsitepay/d;->x:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 61
    sget v0, Lcom/alipay/mobile/onsitepay/d;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 62
    sget v0, Lcom/alipay/mobile/onsitepay/d;->I:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->C:Landroid/widget/LinearLayout;

    .line 63
    sget v0, Lcom/alipay/mobile/onsitepay/d;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 64
    sget v0, Lcom/alipay/mobile/onsitepay/d;->q:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 65
    sget v0, Lcom/alipay/mobile/onsitepay/d;->Z:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->E:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 66
    sget v0, Lcom/alipay/mobile/onsitepay/d;->V:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->A:Landroid/widget/LinearLayout;

    .line 67
    sget v0, Lcom/alipay/mobile/onsitepay/d;->H:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/CircularImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->j:Lcom/alipay/mobile/common/misc/CircularImageView;

    .line 68
    sget v0, Lcom/alipay/mobile/onsitepay/d;->w:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 69
    sget v0, Lcom/alipay/mobile/onsitepay/d;->K:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->x:Landroid/widget/LinearLayout;

    .line 70
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aq:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->e()V

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->H:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/p;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/p;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public final a(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->H:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/q;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/q;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->H:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/s;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/s;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->H:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/t;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->H:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/u;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/onsitepay/payer/confirm/u;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->H:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/r;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/r;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/confirm/v;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/v;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/confirm/w;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/w;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/alipay/mobile/onsitepay/e;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->setContentView(I)V

    .line 39
    return-void
.end method

.method public final setContentView(I)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->f()V

    .line 78
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->setContentView(Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->f()V

    .line 90
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->f()V

    .line 84
    return-void
.end method
