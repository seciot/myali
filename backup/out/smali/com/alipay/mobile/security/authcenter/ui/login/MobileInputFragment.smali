.class public Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "mobile_input_fragment"
.end annotation


# instance fields
.field d:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "switchAccount"
    .end annotation
.end field

.field e:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "registerAccount"
    .end annotation
.end field

.field f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "nextStepBtn"
    .end annotation
.end field

.field g:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "mobileInput"
    .end annotation
.end field

.field private h:Lcom/alipay/mobile/security/authcenter/ui/y;

.field private i:Lcom/alipay/mobile/security/authcenter/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;-><init>()V

    return-void
.end method

.method private d()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    return-void
.end method


# virtual methods
.method a(Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->isMobileUser()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->h:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/login/bean/LoginInfo;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->getBindedLoginIds()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;->smsVerify:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;-><init>()V

    new-instance v1, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "loginInfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->i:Lcom/alipay/mobile/security/authcenter/a/e;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/authcenter/a/e;->c(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->a(Ljava/lang/String;Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    throw v1
.end method

.method final c()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/security/authcenter/ui/y;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/MicroApplication;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->h:Lcom/alipay/mobile/security/authcenter/ui/y;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/e;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/a/e;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->i:Lcom/alipay/mobile/security/authcenter/a/e;

    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "phoneLoginView"

    invoke-static {v0, v1, v3, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->i:Lcom/alipay/mobile/security/authcenter/a/e;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/authcenter/a/e;->b(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->d()V

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->a(Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->d()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->dh:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->fQ:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->a(Z)V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "phoneLoginView"

    const-string/jumbo v3, "changeAccount"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->cw:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "1\\d{10}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v2, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->b()V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
