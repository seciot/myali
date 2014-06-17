.class public final Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;
.super Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;
.source "C2BConfirmActivity_.java"


# instance fields
.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->n:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aE:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 41
    sget v0, Lcom/alipay/mobile/onsitepay/d;->Y:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 42
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aF:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 43
    sget v0, Lcom/alipay/mobile/onsitepay/d;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 44
    sget v0, Lcom/alipay/mobile/onsitepay/d;->X:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 45
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aD:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 46
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aG:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->e()V

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/d;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/b;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/e;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/onsitepay/payer/confirm/c;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/f;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/confirm/h;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/h;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/confirm/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/i;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/confirm/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/g;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/alipay/mobile/onsitepay/e;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->setContentView(I)V

    .line 34
    return-void
.end method

.method public final setContentView(I)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->g()V

    .line 54
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->g()V

    .line 66
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->g()V

    .line 60
    return-void
.end method
