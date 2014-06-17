.class public final Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;
.super Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;
.source "BarcodePayActivity_.java"


# instance fields
.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->z:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->o()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->d()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->j()V

    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/alipay/mobile/onsitepay/d;->ar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->n:Landroid/widget/ProgressBar;

    .line 44
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aA:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 45
    sget v0, Lcom/alipay/mobile/onsitepay/d;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->r:Landroid/widget/RelativeLayout;

    .line 46
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aD:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 47
    sget v0, Lcom/alipay/mobile/onsitepay/d;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->l:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    .line 48
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aB:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->o:Landroid/widget/LinearLayout;

    .line 49
    sget v0, Lcom/alipay/mobile/onsitepay/d;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->q:Landroid/widget/LinearLayout;

    .line 50
    sget v0, Lcom/alipay/mobile/onsitepay/d;->at:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->m()V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/o;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/o;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/p;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/p;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/barcode/t;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/t;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/barcode/s;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/barcode/u;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/u;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/q;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/q;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public final o()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/r;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/r;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/alipay/mobile/onsitepay/e;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->setContentView(I)V

    .line 37
    return-void
.end method

.method public final setContentView(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->p()V

    .line 58
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->p()V

    .line 70
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->p()V

    .line 64
    return-void
.end method
