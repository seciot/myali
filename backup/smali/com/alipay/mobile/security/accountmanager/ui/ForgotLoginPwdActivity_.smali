.class public final Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;
.super Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;


# instance fields
.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->z:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->OnAutoReadSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b()V

    return-void
.end method

.method private f()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dW:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eC:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dU:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dZ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->q:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fs:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->h:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dV:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fq:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dX:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ec:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->o:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bE:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->r:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dY:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eL:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dT:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eb:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ed:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fb:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dS:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ea:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dR:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->k:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bj;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/bj;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/be;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/be;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bh;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/bh;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bi;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/bi;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bk;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bk;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bg;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bg;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bf;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bf;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->as:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->setContentView(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->f()V

    return-void
.end method
