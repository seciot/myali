.class public final Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;
.super Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;


# instance fields
.field private n:Landroid/view/View;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->t:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->n:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;[B)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a([B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/an;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/an;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 7

    iget-object v6, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->t:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/al;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/authcenter/ui/login/al;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a([B)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->t:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/am;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/am;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->n:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->bg:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->n:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->n:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bQ:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->l:Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ce:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->m:Lcom/alipay/mobile/commonui/widget/APScrollView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gn:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/CircularImageView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->d:Lcom/alipay/mobile/common/misc/CircularImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->Y:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cj:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fQ:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gk:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bi:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->k:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->X:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bl:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aB:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->f()V

    return-void
.end method
