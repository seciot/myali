.class public final Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;
.super Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;


# instance fields
.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->a()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fc:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fa:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eY:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eZ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ff:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fd:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fe:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->h:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fi:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->f:Lcom/alipay/mobile/commonui/widget/APScrollView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fh:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/di;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/di;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/dg;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/dg;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/dh;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/dh;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aS:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity_;->d()V

    return-void
.end method
