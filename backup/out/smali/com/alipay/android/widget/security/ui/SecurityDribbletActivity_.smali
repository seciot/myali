.class public final Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;
.super Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;


# instance fields
.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b()V

    return-void
.end method

.method private f()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dM:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dL:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$7;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$7;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$6;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_$6;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aH:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity_;->f()V

    return-void
.end method
