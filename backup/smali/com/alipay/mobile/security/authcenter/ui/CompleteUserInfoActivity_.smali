.class public final Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;
.super Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;


# instance fields
.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->b()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eX:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aJ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ft:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dQ:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eB:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fv:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/o;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/p;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/p;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/n;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/n;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aC:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;->d()V

    return-void
.end method
