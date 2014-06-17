.class public final Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;
.super Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;


# instance fields
.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ei:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->en:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fL:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->e:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eo:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ep:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->o:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eh:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ee:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ek:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->el:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ef:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fr:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ej:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fj:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->em:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->k:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bE:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->p:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/cd;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cd;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/cc;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/cc;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/by;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/by;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ca;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ca;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bz;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bz;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/cb;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cb;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->at:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->d()V

    return-void
.end method
