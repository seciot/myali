.class public final Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;
.super Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;


# instance fields
.field private n:Landroid/view/View;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->t:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->n:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->h()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;[B)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a([B)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->g()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/af;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/af;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 7

    iget-object v6, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->t:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/ad;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/authcenter/ui/login/ad;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a([B)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/ac;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/ac;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/ag;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/ag;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/ae;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/ae;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->n:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->bf:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->n:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->n:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aB:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->l:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->e:Lcom/alipay/mobile/commonui/widget/APImageButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->Z:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bO:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->v:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bN:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->f()V

    return-void
.end method
