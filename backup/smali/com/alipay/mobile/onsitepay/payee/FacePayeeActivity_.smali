.class public final Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;
.super Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;
.source "FacePayeeActivity_.java"


# instance fields
.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->t:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aw:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->f:Landroid/widget/LinearLayout;

    .line 45
    sget v0, Lcom/alipay/mobile/onsitepay/d;->U:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 46
    sget v0, Lcom/alipay/mobile/onsitepay/d;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 47
    sget v0, Lcom/alipay/mobile/onsitepay/d;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 48
    sget v0, Lcom/alipay/mobile/onsitepay/d;->az:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->d:Landroid/widget/RelativeLayout;

    .line 49
    sget v0, Lcom/alipay/mobile/onsitepay/d;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->h:Landroid/widget/RelativeLayout;

    .line 50
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aD:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 51
    sget v0, Lcom/alipay/mobile/onsitepay/d;->ay:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->e:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/alipay/mobile/onsitepay/d;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->c:Landroid/widget/LinearLayout;

    .line 53
    sget v0, Lcom/alipay/mobile/onsitepay/d;->av:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->j:Landroid/widget/RelativeLayout;

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->a()V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payee/p;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public final a(Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payee/q;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    new-instance v0, Lcom/alipay/mobile/onsitepay/payee/r;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/onsitepay/payee/r;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payee/m;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/l;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    new-instance v0, Lcom/alipay/mobile/onsitepay/payee/k;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/onsitepay/payee/k;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/o;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/o;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/j;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/onsitepay/payee/j;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/n;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/n;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/alipay/mobile/onsitepay/e;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->setContentView(I)V

    .line 38
    return-void
.end method

.method public final setContentView(I)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->e()V

    .line 61
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->e()V

    .line 73
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->e()V

    .line 67
    return-void
.end method
