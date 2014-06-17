.class public Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_passwordmanager_t_user"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gestureState"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "resetDependentPwd"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "modifyGesturePassword"
    .end annotation
.end field

.field protected d:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "otpOpenTextTip"
    .end annotation
.end field

.field protected e:Landroid/widget/ImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "robotXiaoBao"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field protected g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected h:Ljava/lang/String;

.field i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field protected j:I

.field k:Landroid/app/AlertDialog;

.field protected l:Landroid/support/v4/content/LocalBroadcastManager;

.field protected m:Landroid/content/BroadcastReceiver;

.field protected n:Landroid/content/BroadcastReceiver;

.field protected o:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

.field p:Landroid/content/DialogInterface$OnClickListener;

.field private q:Lcom/alipay/android/widget/security/a/d;

.field private r:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->k:Landroid/app/AlertDialog;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    new-instance v0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->o:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->o:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a(Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->o:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    const-string/jumbo v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private d()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "setORcheck"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "canBack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "GestureShowSkipBtn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000005"

    const-string/jumbo v3, "20000006"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :cond_2
    return-void
.end method

.method protected a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_normal_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_top_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_bottom_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->o:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->q:Lcom/alipay/android/widget/security/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/widget/security/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->c()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->dismissProgressDialog()V

    invoke-virtual {p0, p3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Z)V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0, p3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Z)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->o:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a()V

    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_normal_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    const-string/jumbo v0, "\u5df2\u5173\u95ed"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->toast(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->j:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->d()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->j:I

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->d()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->j:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "setORcheck"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000005"

    const-string/jumbo v3, "20000006"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->d()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bm:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->ck:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->j:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->b(Z)V

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "inputLoginPwdBox"

    const-string/jumbo v7, "phonePasswordView"

    const-string/jumbo v8, "modifyGesture"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dr:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->r:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "Security_ResetPW"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "YES"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->r:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "Security_ResetPW"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity_;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "URL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getPoliceCenterUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?serviceId=wallet_0001&context=restSixSimplePwd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000028"

    const-string/jumbo v2, "20000058"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "phonePayPwdView"

    const-string/jumbo v7, "phonePasswordView"

    const-string/jumbo v8, "setPhonePayPwd"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0

    :cond_3
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->ds:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "scode"

    const-string/jumbo v2, "phone_key"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000011"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v0, Lcom/alipay/android/widget/security/a/d;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/android/widget/security/a/d;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->q:Lcom/alipay/android/widget/security/a/d;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->r:Lcom/alipay/mobile/base/config/ConfigService;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moreHome"

    const-string/jumbo v4, "mobilePasswordIndex"

    const-string/jumbo v5, "backIcon"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :cond_0
    return-void
.end method
