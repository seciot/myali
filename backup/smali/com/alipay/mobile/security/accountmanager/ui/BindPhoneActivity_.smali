.class public final Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;
.super Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;


# instance fields
.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->x:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dv:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dz:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dx:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dC:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dI:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dB:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dy:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dJ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dH:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->k:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->er:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dK:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bd:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dF:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dD:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dw:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dG:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dE:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dA:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/ai;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ai;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ag;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ag;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ah;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ah;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/af;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/af;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->au:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity_;->d()V

    return-void
.end method
