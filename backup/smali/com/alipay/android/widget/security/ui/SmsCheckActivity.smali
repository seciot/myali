.class public Lcom/alipay/android/widget/security/ui/SmsCheckActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/OnSendCallback;
.implements Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "register_checkcode"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_inputSmsCodeTip"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_SmsCodeSendBox"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_verifySmsCodeButton"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "auth_titleBar"
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

.field private g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/android/widget/security/a/e;

.field private l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.simplepwd.open"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "openResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public OnAutoReadSms(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isNeedAutoInputSms="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ao:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected final a()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->e:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->L:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->f:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->f:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;->a(Landroid/widget/EditText;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->f:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hideaccount"

    invoke-static {v4, v5}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->clearFocus()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;->resultCode:Ljava/lang/String;

    const-string/jumbo v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "down_auto"

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->k:Lcom/alipay/android/widget/security/a/e;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/alipay/android/widget/security/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;)V

    return-void

    :cond_0
    const-string/jumbo v0, "down_input"
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v0
.end method

.method protected b()V
    .locals 9
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    sget-object v0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->k:Lcom/alipay/android/widget/security/a/e;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/a/e;->a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->dismissProgressDialog()V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;->resultCode:Ljava/lang/String;

    const-string/jumbo v2, "200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "95188"

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v2, "5201"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$3;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;->message:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->f:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    new-instance v0, Lcom/alipay/android/widget/security/a/e;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/a/e;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->k:Lcom/alipay/android/widget/security/a/e;

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "95188"

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\u6821\u9a8c\u7801\u77ed\u4fe1\u53ef\u80fd\u7565\u6709\u5ef6\u8fdf\uff0c\u8bf7\u7a0d\u7b49\u3002"

    const-string/jumbo v3, "\u4e0d\u4e86"

    new-instance v4, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$4;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)V

    const-string/jumbo v5, "\u597d\u7684"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->b()V

    invoke-interface {p1}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    return-void
.end method
