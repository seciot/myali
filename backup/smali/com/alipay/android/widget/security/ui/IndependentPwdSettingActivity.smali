.class public Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/android/widget/security/a/d;

.field private g:Lcom/alipay/mobile/commonui/widget/APButton;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->k:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearPwd()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;Z)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.simplepwd.open"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "openResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "1820"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1821"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1822"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1823"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1825"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a()V

    return-void
.end method


# virtual methods
.method a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 11
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bU:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bV:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "700"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\u62e8\u6253"

    new-instance v8, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$3;

    invoke-direct {v8, p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V

    const-string/jumbo v9, "\u53d6\u6d88"

    new-instance v10, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$4;

    invoke-direct {v10, p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\u786e\u5b9a"

    new-instance v8, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;

    invoke-direct {v8, p0, v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;-><init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;Ljava/lang/String;)V

    move-object v4, p0

    move-object v9, v5

    move-object v10, v5

    invoke-virtual/range {v4 .. v10}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->f:Lcom/alipay/android/widget/security/a/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->i:Z

    invoke-virtual {v1, p1, v0, v2}, Lcom/alipay/android/widget/security/a/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->dismissProgressDialog()V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "idCardNo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->h:Ljava/lang/String;

    const-string/jumbo v1, "IS_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->i:Z

    const-string/jumbo v1, "fromWhich"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "INDEPENDENT_IS_RESET: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fromWhich:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->P:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->setContentView(I)V

    iput v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->k:I

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cX:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fD:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gq:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V

    new-instance v0, Lcom/alipay/android/widget/security/a/d;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/android/widget/security/a/d;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->f:Lcom/alipay/android/widget/security/a/d;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->k:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iput p1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->k:I

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    if-ne p1, v0, :cond_7

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v4

    const/4 v2, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    const-string/jumbo v2, "\u8bf7\u4e0d\u8981\u4f7f\u7528\u8fde\u7eed\u7684\u6570\u5b57"

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2, v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->toast(Ljava/lang/String;I)V

    move v0, v1

    :cond_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->X:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v2, "\u8bf7\u4e0d\u8981\u4f7f\u7528\u76f8\u540c\u7684\u6570\u5b57"

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "\u8bf7\u4e0d\u8981\u4f7f\u7528\u624b\u673a\u53f7\u7801\u4e2d\u7684\u8fde\u7eed\u6570\u5b57"

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearPwd()V

    goto :goto_1

    :cond_7
    const/4 v2, 0x2

    if-lt p1, v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearPwdByIndex(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_2
.end method
