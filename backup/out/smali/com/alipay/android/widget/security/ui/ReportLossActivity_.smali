.class public final Lcom/alipay/android/widget/security/ui/ReportLossActivity_;
.super Lcom/alipay/android/widget/security/ui/ReportLossActivity;


# instance fields
.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/ReportLossActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/ReportLossActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;)V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dO:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bf:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dP:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dd:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cN:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gh:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/ReportLossActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/ReportLossActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/ReportLossActivity_$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/ReportLossActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->am:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity_;->c()V

    return-void
.end method
