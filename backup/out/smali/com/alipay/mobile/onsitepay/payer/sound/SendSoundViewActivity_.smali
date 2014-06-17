.class public final Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;
.super Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;
.source "SendSoundViewActivity_.java"


# instance fields
.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x:Landroid/os/Handler;

    .line 227
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->o()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->p()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->u()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->d()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->j()V

    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aD:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->p:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 43
    sget v0, Lcom/alipay/mobile/onsitepay/d;->G:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 44
    sget v0, Lcom/alipay/mobile/onsitepay/d;->r:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->l:Landroid/widget/LinearLayout;

    .line 45
    sget v0, Lcom/alipay/mobile/onsitepay/d;->O:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 46
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aJ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    .line 47
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aH:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->o:Landroid/widget/RelativeLayout;

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->n()V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/v;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/v;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/t;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/t;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/q;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/q;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/r;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/r;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/y;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/sound/y;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/s;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/s;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/w;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/w;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public final o()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/u;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/u;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/alipay/mobile/onsitepay/e;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->setContentView(I)V

    .line 36
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/z;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/z;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/x;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/x;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public final setContentView(I)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x()V

    .line 55
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->setContentView(Landroid/view/View;)V

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x()V

    .line 67
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->x()V

    .line 61
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/aa;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/aa;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method
