.class public Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak",
        "NewApi"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_bind_phone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;,
        Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/app/AlertDialog$Builder;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Landroid/app/AlertDialog;

.field private G:Ljava/util/Timer;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/support/v4/content/LocalBroadcastManager;

.field private K:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private L:Ljava/lang/Boolean;

.field private M:Ljava/lang/Boolean;

.field private N:Ljava/lang/Boolean;

.field private O:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

.field private P:Ljava/lang/Thread;

.field private Q:Ljava/lang/Thread;

.field private R:Ljava/lang/Thread;

.field private S:Ljava/lang/Thread;

.field private T:Ljava/lang/Thread;

.field private U:Ljava/lang/Boolean;

.field private final V:Ljava/lang/String;

.field private W:Landroid/os/Handler;

.field protected a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneStep11"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneStep12"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneStep22"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneSuccess"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneFail"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneWarn3"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhonePwd"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneNextStep1"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneNum"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneNextStep12"
    .end annotation
.end field

.field protected k:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneStep22Warn"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneCheckCode"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhonePayPwd22"
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneConfirmBtn22"
    .end annotation
.end field

.field protected o:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneSuccessBtn"
    .end annotation
.end field

.field protected p:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "failWarn2"
    .end annotation
.end field

.field protected q:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityBindPhoneFailBtn"
    .end annotation
.end field

.field protected r:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_bind_phone_send_err"
    .end annotation
.end field

.field s:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

.field t:Landroid/content/DialogInterface$OnCancelListener;

.field u:Landroid/text/TextWatcher;

.field v:Landroid/content/DialogInterface$OnClickListener;

.field w:Landroid/content/DialogInterface$OnClickListener;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->E:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->M:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->N:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->U:Ljava/lang/Boolean;

    const-string/jumbo v0, "mobile binding end"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->V:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/q;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/q;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->W:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/x;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/x;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->s:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/y;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/y;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/z;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/z;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->u:Landroid/text/TextWatcher;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/ad;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ad;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->v:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/ae;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ae;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->w:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic A(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->W:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic B(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic C(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic D(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic E(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->e()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic F(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->f()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic G(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i()Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic H(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->j()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->U:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->P:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->G:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->k:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->U:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->U:Ljava/lang/Boolean;

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;)V
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "702"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->w:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "700"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cG:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->aH:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/accountmanager/ui/ab;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ab;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->aA:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/security/accountmanager/ui/ac;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ac;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getSmsNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getSmsContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getSmsContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/SMSService;->isCanUseSim()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->L:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->L:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/alipay/mobile/security/accountmanager/ui/r;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/accountmanager/ui/r;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/SMSService;->sendSms(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    const-string/jumbo v0, "196"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/accountmanager/ui/s;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/accountmanager/ui/s;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=sendBroadcast],[msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "bindPhoneBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isBind"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->J:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->J:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "success"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "cellphone"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=backSourceApp], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->O:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    check-cast v0, Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;->notifyCallback(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->N:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->Q:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getBindMobile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->K:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setMobileNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->K:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateSecurityLevelRefresh(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getBindMobile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    :goto_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=onPostIsBindSuccess], [msg=\u9690\u85cf\u952e\u76d8\u5f02\u5e38 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=updateSecurityLevelRefresh], [msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "709"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->K:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setMobileNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->K:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateSecurityLevelRefresh(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=updateSecurityLevelRefresh], [msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "704"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "196"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/accountmanager/ui/w;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/accountmanager/ui/w;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->L:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->R:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->M:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->S:Ljava/lang/Thread;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setInputType(I)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/aa;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/aa;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private e()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;->setLogonId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->P:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;->queryBindMobile(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=MobileBindQueryRes], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->T:Ljava/lang/Thread;

    return-object v0
.end method

.method private f()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->setBindMobile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->setLogonId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/security/SMSService;->serviceProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->setIsp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v3, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->x:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->setPaymentPwd(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->Q:Ljava/lang/Thread;

    invoke-interface {v1, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;->verifyPwdAndResSms(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=step11PaypwdSend], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 4

    const/high16 v3, -0x100

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$style;->a:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->B:Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->av:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->er:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eq:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->es:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->B:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->B:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/t;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/t;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->B:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->F:Landroid/app/AlertDialog;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->F:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->H:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/u;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/u;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->I:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/v;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/v;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryUpSmsReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryUpSmsReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->E:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryUpSmsReq;->setSessionId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryUpSmsReq;->setLogonId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->S:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;->queryUpSms(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryUpSmsReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=isBindSuccess], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method private i()Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindSmsReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindSmsReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindSmsReq;->setLogonId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindSmsReq;->setMobile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->R:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;->sendSms(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindSmsReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=step12SendPhone], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private j()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->setAuthCode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->setBindMobile(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->setLogonId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->setPaymentPwd(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->T:Ljava/lang/Thread;

    invoke-interface {v1, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;->verifyPwdAndAuthCode(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=step22CheckCodeAndPaypwd], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->N:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->G:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g()V

    return-void
.end method

.method static synthetic s(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic v(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->F:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic w(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic x(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->L:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic y(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d()V

    return-void
.end method

.method static synthetic z(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->K:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->K:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->C:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->O:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method protected b()V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v7, 0x22

    const/16 v6, 0x99

    const/16 v3, 0x33

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Landroid/widget/EditText;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/SMSService;->isCanUseSim()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->L:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->L:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v4, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x13

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v5, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;

    invoke-direct {v1, p0, v4, v4}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->u:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->u:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->u:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->u:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->s:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->M:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->by:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getSendCodeButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dz:I

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u652f\u4ed8\u5bc6\u7801\u4e0d\u6b63\u786e\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/SMSService;->isCanUseSim()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->L:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->L:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aB:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    invoke-static {p0}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->by:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dA:I

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "[1][3-8][0-9]{9}"

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aL:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aB:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->by:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dw:I

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->z:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bv:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->z:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->by:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dJ:I

    if-ne v1, v0, :cond_c

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/Boolean;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dy:I

    if-ne v1, v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/Boolean;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v4, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->D:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->M:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->currentSecond2Zero()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->G:Ljava/util/Timer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->G:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    :cond_7
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void
.end method
