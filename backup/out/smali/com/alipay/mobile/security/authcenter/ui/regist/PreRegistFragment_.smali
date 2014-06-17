.class public final Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;
.super Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;


# instance fields
.field private g:Landroid/view/View;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->h:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->g:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/regist/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/regist/b;-><init>(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->g:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->af:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->g:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ba:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dg:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cU:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->c()V

    return-void
.end method
