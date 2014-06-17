.class public Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "sms_send"
.end annotation


# instance fields
.field d:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "numberInput"
    .end annotation
.end field

.field e:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "checkIdBySMS"
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/login/bean/LoginInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->succ:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "mobileNo"

    iget-object v4, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->f:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method final c()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "loginInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->f:Lcom/alipay/mobile/login/bean/LoginInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->f:Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v0}, Lcom/alipay/mobile/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/sms/i;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/i;-><init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
