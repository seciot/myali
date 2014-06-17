.class public Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/mobile/commonui/widget/OnSendCallback;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "sms_receive"
.end annotation


# instance fields
.field d:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "checkCodeTip"
    .end annotation
.end field

.field e:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "checkCodeSendBox"
    .end annotation
.end field

.field f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "submitSmsCode"
    .end annotation
.end field

.field private j:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private k:Ljava/lang/String;

.field private l:Lcom/alipay/mobile/commonui/widget/SendResultCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;)Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->j:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method


# virtual methods
.method public OnAutoReadSms(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->OnAutoReadSms(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->succ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->l:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->l:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method a(Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->isMobileUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {v2, v0, v3}, Lcom/alipay/mobile/security/authcenter/ui/y;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/MicroApplication;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/login/bean/LoginInfo;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->getBindedLoginIds()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->getUserStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->d(Ljava/lang/String;)V

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

.method b(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->succ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
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

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->g:Lcom/alipay/mobile/security/authcenter/a/e;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/authcenter/a/e;->b(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->a(Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;)V
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
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->j:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->j:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APEditText;->setInputType(I)V

    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->j:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->j:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->e()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "mobileNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->S:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "%s"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->j:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/sms/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/a;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->j:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->j:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    return-void
.end method

.method d()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->g:Lcom/alipay/mobile/security/authcenter/a/e;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/security/authcenter/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->b(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fM:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->d()V

    :cond_0
    return-void
.end method

.method public onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->l:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    return-void
.end method
