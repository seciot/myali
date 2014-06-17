.class public Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "validate_pay_pwd"
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pay_pwd"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "next_step_btn"
    .end annotation
.end field

.field c:Landroid/os/Bundle;

.field d:Landroid/view/View$OnClickListener;

.field e:Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;

.field private g:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field private h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private i:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->i:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    new-instance v0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$2;-><init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;-><init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->e:Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->i:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->i:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->i:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$1;-><init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected b()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->g:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->e:Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->payPwdValidate(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;)V

    return-void
.end method

.method protected c()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "INDEPENDENT_IS_RESET is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "IS_RESET"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "IS_RESET"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "IS_RESET"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "fromWhich"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "fromWhich"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "fromWhich"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->g:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/widget/security/app/IndependentPwdApp;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/app/IndependentPwdApp;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->c:Landroid/os/Bundle;

    return-void
.end method
