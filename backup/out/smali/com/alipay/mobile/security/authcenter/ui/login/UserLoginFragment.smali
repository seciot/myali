.class public Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "user_login_fragment"
.end annotation


# instance fields
.field d:Lcom/alipay/mobile/common/misc/CircularImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "user_defined_image"
    .end annotation
.end field

.field e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "mobile_pwd_input"
    .end annotation
.end field

.field f:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gen_pwdInput"
    .end annotation
.end field

.field g:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "switchAccount"
    .end annotation
.end field

.field h:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userAccount"
    .end annotation
.end field

.field i:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btnLogin"
    .end annotation
.end field

.field j:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btnRegister"
    .end annotation
.end field

.field k:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "forgetPwd"
    .end annotation
.end field

.field l:Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loginRootLayout"
    .end annotation
.end field

.field m:Lcom/alipay/mobile/commonui/widget/APScrollView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "login_scrollView"
    .end annotation
.end field

.field private n:Lcom/alipay/mobile/login/bean/LoginInfo;

.field private t:Lcom/alipay/mobile/framework/service/ext/security/AccountService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->t:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->b()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alipay/mobile/login/bean/b;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/x;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "wireless"

    :goto_2
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected final b(Z)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isIntroEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "sign"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "20000008"

    const-string/jumbo v3, "09999983"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u542f\u52a8\u5230\u4f59\u989d\u5b9dapp\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method protected final c(Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000008"

    const-string/jumbo v2, "20000054"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u542f\u52a8\u5230\u4f59\u989d\u5b9dapp\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method protected final e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputView()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method final f()V
    .locals 8

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->l:Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/ah;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/ah;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->setKeyboardHiddenListener(Lcom/alipay/mobile/security/authcenter/ui/w;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->m:Lcom/alipay/mobile/commonui/widget/APScrollView;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/ai;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/ai;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getEditText()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/aj;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/aj;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->k:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "loginInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hideaccount"

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/login/bean/LoginInfo;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setVisibility(I)V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdText(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->b()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getEditText()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->a(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "mobile"

    :goto_2
    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->t:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->d:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-direct {v0, v3}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    sget v5, Lcom/alipay/mobile/clientsecurity/R$drawable;->x:I

    new-instance v6, Lcom/alipay/mobile/security/authcenter/ui/login/ak;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/ak;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;)V

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->n:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->j()V

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputName()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v1, v0, v7, v7, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputName()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setVisibility(I)V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    new-instance v3, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v3}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v5, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "alipay"

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->d:Lcom/alipay/mobile/common/misc/CircularImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->x:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fQ:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->Y:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->a()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bi:I

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->X:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->b()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->j()V

    goto :goto_0
.end method
