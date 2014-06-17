.class public final Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;
.super Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;


# instance fields
.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->y:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a(Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->d()V

    return-void
.end method

.method private f()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eJ:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eH:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->k:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eE:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eG:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eF:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fm:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eI:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->et:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fk:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ge:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fl:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eV:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fn:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->y:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;Lcom/alipay/android/widget/security/service/SecurityGradeViewModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->y:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->y:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->y:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$6;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$6;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$5;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_$5;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aJ:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity_;->f()V

    return-void
.end method
