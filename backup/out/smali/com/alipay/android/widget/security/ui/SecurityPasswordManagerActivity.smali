.class public Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_passwordmanager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/Integer;

.field private static final s:Ljava/lang/Integer;

.field private static final t:Ljava/lang/Integer;


# instance fields
.field private A:Z

.field protected a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gestureState"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "inDependentPwdCloseDesc"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APExtTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "inDependentPwdState"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

.field protected e:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "modifyGesturePassword"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "otpOpenTextTip"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "robotXiaoBao"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field protected i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected j:Ljava/lang/String;

.field k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field protected l:I

.field m:Landroid/app/AlertDialog;

.field protected n:Landroid/support/v4/content/LocalBroadcastManager;

.field protected o:Landroid/content/BroadcastReceiver;

.field protected p:Landroid/content/BroadcastReceiver;

.field q:Landroid/content/DialogInterface$OnClickListener;

.field private u:Z

.field private v:Landroid/app/AlertDialog$Builder;

.field private final w:Ljava/lang/String;

.field private x:Lcom/alipay/android/widget/security/a/d;

.field private y:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;

.field private z:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->r:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->s:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->t:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->u:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->j:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    const-string/jumbo v0, "change login password end"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->w:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->A:Z

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$12;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$12;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->q:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Z)V
    .locals 9

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "IS_RESET"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "20000028"

    const-string/jumbo v3, "20000051"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v8, "setPhonePayPwd"

    :goto_0
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "phonePayPwdView"

    const-string/jumbo v7, "phonePasswordView"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v8, "openPhonePayPwd"
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->u:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method private c(Z)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->v:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->v:Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->am:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->aI:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eN:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v2, "\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->v:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->v:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Lcom/alipay/mobile/commonui/widget/APEditText;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->v:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$6;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->v:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$7;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=openPaypwdDialog], [msg="

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

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V
    .locals 9

    new-instance v0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->z:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->z:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    invoke-virtual {v0, p0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a(Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->z:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "inputPhonePayPwdBox"

    const-string/jumbo v7, "phonePasswordView"

    const-string/jumbo v8, "closePhonePayPwd"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private h()V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aa:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u662f"

    new-instance v4, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

    const-string/jumbo v5, "\u5426"

    new-instance v6, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$2;

    invoke-direct {v6, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private i()V
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

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

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

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :cond_2
    return-void
.end method

.method protected a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;

    invoke-direct {v4, p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->j:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_normal_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_top_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_bottom_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->h()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;->isOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;->isOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->u:Z

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$3;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Z)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->loginPwdValidate(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

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

.method public final a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->z:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a()V

    goto :goto_0
.end method

.method protected b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->x:Lcom/alipay/android/widget/security/a/d;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/a/d;->a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->h()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->x:Lcom/alipay/android/widget/security/a/d;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/alipay/android/widget/security/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->dismissProgressDialog()V

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->e()V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Z)V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->u:Z

    const-string/jumbo v0, "\u5173\u95ed\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "700"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "\u62e8\u6253"

    :goto_1
    new-instance v4, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$13;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Ljava/lang/String;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v7}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Z)V

    throw v0

    :cond_3
    :try_start_1
    const-string/jumbo v3, "\u786e\u5b9a"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected b(Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->g()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->c:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->setLeftText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->f()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->d:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->d:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const-string/jumbo v1, "50000006"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->c:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->d:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->attachNewFlag2LeftText(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected d()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_normal_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    const-string/jumbo v0, "\u5df2\u5173\u95ed"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->toast(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->l:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->l:I

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->l:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "setORcheck"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000005"

    const-string/jumbo v3, "20000006"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected e()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->z:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a()V

    return-void
.end method

.method protected f()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->A:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->A:Z

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->c:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$14;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$14;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->d:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->ackClick()V

    goto :goto_0
.end method

.method protected g()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->d:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->ackClick()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->c:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->c:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$15;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$15;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
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

    iput v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->l:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->c(Z)V

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
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->ds:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "scode"

    const-string/jumbo v2, "phone_key"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000011"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v0, Lcom/alipay/android/widget/security/a/d;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/android/widget/security/a/d;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->x:Lcom/alipay/android/widget/security/a/d;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;-><init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;B)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->y:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->y:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.mobile.simplepwd.open"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->p:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->y:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->y:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$SimplePwdOpenReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

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

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :cond_0
    return-void
.end method
