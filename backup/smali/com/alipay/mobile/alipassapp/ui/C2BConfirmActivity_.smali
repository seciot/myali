.class public final Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;
.super Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;


# instance fields
.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->c()V

    return-void
.end method

.method private f()V
    .locals 1

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->originalAmountView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tradeAmountView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tradeOppositeView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->C2BConfirmPay:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->originalAmountMessage:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tradeNameView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/dh;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/dh;-><init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/df;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/df;-><init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/dj;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/dj;-><init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/dg;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/dg;-><init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/di;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/di;-><init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/dl;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/dl;-><init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/dm;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/dm;-><init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/dk;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/dk;-><init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$layout;->alipass_payment_c2b_confirminfor:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->f()V

    return-void
.end method
