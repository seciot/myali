.class public Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_binding_alipay"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "binding_alipay_user"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "binding_alipay_user_logon_pwd"
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "authcenter_binding_alipay_submit"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "authcenter_regiester_new_user"
    .end annotation
.end field

.field g:Landroid/text/TextWatcher;

.field h:Ljava/lang/Thread;

.field private i:Lcom/alipay/mobile/security/authcenter/a/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/az;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/az;-><init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->g:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->h:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/bc;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/bc;-><init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/ba;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/ba;-><init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/bb;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/bb;-><init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setCleanButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->h:Ljava/lang/Thread;

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;->setClientID(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;->setLoginAccount(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;->setLoginPassword(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;->setAlipayId(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;->setAlipayPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->i:Lcom/alipay/mobile/security/authcenter/a/g;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/a/g;->a(Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;)Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->dismissProgressDialog()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p3}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;->getResultStatus()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->dismissProgressDialog()V

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v0, 0x1326648

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xaf1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;->getMemo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->J:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const v0, 0x13265e4

    if-ne v0, p2, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "alipayBindingView"

    const-string/jumbo v8, "confirmBinding"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/g;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/authcenter/a/g;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->i:Lcom/alipay/mobile/security/authcenter/a/g;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v0, "tabao_user_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->c:Ljava/lang/String;

    const-string/jumbo v0, "taobao_password"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->d:Ljava/lang/String;

    return-void
.end method
