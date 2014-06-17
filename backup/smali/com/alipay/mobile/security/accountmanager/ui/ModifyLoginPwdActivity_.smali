.class public final Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;
.super Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;


# instance fields
.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->a()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eM:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eQ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eO:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eN:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eU:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eP:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eS:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eR:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eT:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/cs;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cs;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/cq;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cq;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/cr;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cr;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aK:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity_;->d()V

    return-void
.end method
