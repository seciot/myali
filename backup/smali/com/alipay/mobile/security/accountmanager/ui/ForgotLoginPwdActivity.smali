.class public Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_back_loginpwd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Landroid/app/AlertDialog$Builder;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/Boolean;

.field private I:Ljava/lang/Thread;

.field private J:Ljava/lang/Thread;

.field private K:Ljava/lang/Thread;

.field private L:Ljava/lang/Thread;

.field private M:Ljava/lang/Thread;

.field private N:Ljava/lang/Thread;

.field private O:Z

.field private P:I

.field private Q:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;

.field private R:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

.field private W:Lcom/alipay/mobile/security/accountmanager/a/c;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd_titleBar"
    .end annotation
.end field

.field private aa:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

.field private ab:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Lcom/alipay/mobile/base/config/ConfigService;

.field protected b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd_step1"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd2"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_select_account"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_confirm_register"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd3"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd4"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_set_simplepwd"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_paypwd1_login_id"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_img_checkcode"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd1_next_step"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd2_warn_txt"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd2_CheckCodeSend"
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd2_next_btn"
    .end annotation
.end field

.field protected o:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd_step3_socityId"
    .end annotation
.end field

.field protected p:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd_step3_next_step"
    .end annotation
.end field

.field protected q:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd_new_pwd"
    .end annotation
.end field

.field protected r:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "is_show_pwd"
    .end annotation
.end field

.field protected s:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_loginpwd4_confirm"
    .end annotation
.end field

.field public t:Landroid/os/Handler;

.field u:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;

.field v:Landroid/view/View$OnClickListener;

.field w:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

.field x:Landroid/text/TextWatcher;

.field y:Landroid/content/DialogInterface$OnCancelListener;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->H:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->O:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->T:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ac:Ljava/lang/String;

    const-string/jumbo v0, "down_input"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/aj;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/aj;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->t:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/az;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/az;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->u:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/ba;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ba;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bb;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bb;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->w:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bc;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bc;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x:Landroid/text/TextWatcher;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bd;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bd;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->y:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic A(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic B(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->X:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic D(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    return v0
.end method

.method static synthetic E(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->G:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->H:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->O:Z

    iput v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->P:I

    iput-boolean v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->T:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->X:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ab:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ac:Ljava/lang/String;

    const-string/jumbo v0, "down_input"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic F(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic H(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic I(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->y:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->by:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 7

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    const-string/jumbo v0, "5310"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ci:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "705"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "5305"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/security/accountmanager/ui/at;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/accountmanager/ui/at;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->k()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->O:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d()V

    :cond_3
    const-string/jumbo v0, "711"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->k()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "700"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "301"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/security/accountmanager/ui/ak;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ak;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=onPostCheckUserAccountAndSendSms], [msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->O:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d()V

    :cond_1
    const-string/jumbo v0, "1011"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "5201"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "301"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/security/accountmanager/ui/al;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/accountmanager/ui/al;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=onPostCheckPhoneUserAccountAndSendSms], [msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e()V

    new-instance v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p5, :cond_0

    const-string/jumbo v0, "registBindToCard"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000015"

    const-string/jumbo v3, "20000008"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000015"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8df3\u8f6c\u5230\u767b\u9646\u9875\u9762\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-static {p0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->a(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->b(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Q:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;

    const/4 v1, 0x0

    new-instance v3, Lcom/alipay/mobile/security/accountmanager/ui/ar;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ar;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/util/List;)V

    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->O:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->P:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "down_input"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ac:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "down_auto"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readSmsType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->y:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->by:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->findUserInfoByLoginId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aq:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/au;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/au;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->F:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->F:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=showNoBindPhoneDialog],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=onPostResetPassword], [msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x1f4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ax;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ax;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ay;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ay;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setCertNo(Ljava/lang/String;)V

    const-string/jumbo v2, "idCard"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setCertType(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setLoginId(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/security/securitycommon/Constants;->PWD_TYPE_LOGIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setPasswordType(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->M:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->checkUserCert(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=checkSocityId],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0xb

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ab:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->aa:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->aa:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v7, "95188"

    aput-object v7, v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v9, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->h:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->V:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    new-instance v3, Lcom/alipay/mobile/security/accountmanager/ui/an;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/an;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->V:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->b()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c(Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->setLoginId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->setCodeImage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "RESEND"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->setSessionId(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->I:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->checkUserAccountAndSendSms(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->setSessionId(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=verifyImageCode],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method private g()Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;
    .locals 4

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "RESEND"

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->J:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->W:Lcom/alipay/mobile/security/accountmanager/a/c;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/mobile/security/accountmanager/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->G:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=verifyImageCode],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic g(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->X:Ljava/lang/String;

    return-object p1
.end method

.method private h()Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setLoginId(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/security/securitycommon/Constants;->PWD_TYPE_LOGIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setPwdType(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setSmsCode(Ljava/lang/String;)V

    const-string/jumbo v2, "found"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setUserAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setBusinessMobileValidateStatus(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->K:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->verifySmsCodeForFoundLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=verifySmsCode],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->I:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private i()Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->L:Ljava/lang/Thread;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ae:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "Security_ForgotPW"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "YES"

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ae:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v3, "Security_ForgotPW"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->W:Lcom/alipay/mobile/security/accountmanager/a/c;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/security/accountmanager/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=verifySmsCodeOfPhone],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->J:Ljava/lang/Thread;

    return-object v0
.end method

.method private j()Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->setLoginId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->setPwd(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/Constants;->PWD_TYPE_LOGIN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->setPwdType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->setBusinessMobileValidateStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->N:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->resetPasswordForFoundLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=btnStep4ResetPwd],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->K:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->L:Ljava/lang/Thread;

    return-object v0
.end method

.method private k()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cH:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/am;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/am;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->F:Landroid/app/AlertDialog$Builder;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->F:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=showNoBindPhoneDialog],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic l(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->M:Ljava/lang/Thread;

    return-object v0
.end method

.method private l()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->c(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->H:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic m(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->N:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f()Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->g()Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->h()Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->i()Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j()Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/security/accountmanager/a/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->W:Lcom/alipay/mobile/security/accountmanager/a/c;

    return-object v0
.end method

.method static synthetic x(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic z(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method public OnAutoReadSms(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ab:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isNeedAutoInputSms="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ab:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ac:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->ao:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->fw:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Q:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->dk:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->R:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->fC:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->V:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->k:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->r:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cv:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setCheckBoxText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->r:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Landroid/widget/EditText;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Landroid/widget/EditText;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/aw;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/aw;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->u:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->setCheckCallback(Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->k:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->w:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->r:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v2, "fromWhich"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Z:Ljava/lang/String;

    const-string/jumbo v2, "msp"

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Z:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "alipay"

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Z:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "logonId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;->getImageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    array-length v3, v0

    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->setCheckCodeImg(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->stopAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->isCertified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "5317"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getPoliceCenterUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?serviceId=wallet_0001&authorizeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&context=forgetLoginPwd&safePayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    const-class v3, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity_;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v2, "URL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/as;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/as;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "5310"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "5311"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "5312"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getUserList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "5313"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->l()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "5314"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-static {p0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->T:Z

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->R:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->R:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/security/accountmanager/ui/aq;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/aq;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "5315"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->U:Z

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getUserList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->isCertified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Z)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->l()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ci:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method protected b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeRequst;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeRequst;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeRequst;->setLoginId(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;->getImageCode(Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeRequst;)Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=getImageCode], [msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c()V

    throw v0
.end method

.method protected c()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->stopAnimation()V

    return-void
.end method

.method protected d()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getSendCodeButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method protected final e()V
    .locals 3

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v5, -0x2

    const/4 v4, -0x4

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->fr:I

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->dR:I

    if-ne v3, v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    if-gez v3, :cond_2

    if-ne v3, v5, :cond_b

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->n:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    :cond_2
    iput v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->P:I

    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->P:I

    if-ne v2, v0, :cond_d

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v7, -0x1

    if-eq v7, v3, :cond_4

    const-string/jumbo v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v8, v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "^[\\w\\.-]+(\\.[\\w\\.-]+)*@[\\w-]+(\\.[\\w-]+)+$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    if-nez v0, :cond_7

    move v3, v5

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "1\\d{10}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_4
    if-nez v0, :cond_a

    move v3, v5

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    move v3, v6

    goto :goto_1

    :cond_b
    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->ab:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->cy:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->P:I

    if-ne v6, v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(I)V

    goto/16 :goto_0

    :cond_e
    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->dU:I

    if-ne v3, v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ab:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->aa:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->P:I

    if-ne v2, v0, :cond_f

    invoke-direct {p0, v6}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(I)V

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->P:I

    if-ne v6, v0, :cond_10

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "\u5e10\u6237\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_11
    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->eb:I

    if-ne v3, v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "[0-9]{17}[x|X]"

    const-string/jumbo v3, "[0-9]{15}"

    const-string/jumbo v4, "[0-9]{18}"

    iget-object v5, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->y:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;IB)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_16
    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->dY:I

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-gt v0, v3, :cond_17

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_18

    :cond_17
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->y:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;IB)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/a/c;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/accountmanager/a/c;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->W:Lcom/alipay/mobile/security/accountmanager/a/c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ab:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->aa:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->ae:Lcom/alipay/mobile/base/config/ConfigService;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v6, 0x0

    const/16 v2, 0x8

    const/4 v7, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->H:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v0, v7

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->h:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->V:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->V:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->d()Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->h:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->H:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->T:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->H:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iput-boolean v7, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->T:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    iput-boolean v7, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->S:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\u6821\u9a8c\u7801\u77ed\u4fe1\u53ef\u80fd\u7565\u6709\u5ef6\u8fdf\uff0c\u8bf7\u7a0d\u7b49\u3002"

    const-string/jumbo v3, "\u4e0d\u4e86"

    new-instance v4, Lcom/alipay/mobile/security/accountmanager/ui/av;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/accountmanager/ui/av;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V

    const-string/jumbo v5, "\u597d\u7684"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->finish()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_1
.end method
