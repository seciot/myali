.class public Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_dribblet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityDribbletSwitch"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityDribbletWarn"
    .end annotation
.end field

.field protected c:Landroid/app/AlertDialog$Builder;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/alipay/mobile/commonui/widget/APEditText;

.field g:Landroid/content/DialogInterface$OnClickListener;

.field h:Landroid/content/DialogInterface$OnClickListener;

.field i:Landroid/content/DialogInterface$OnClickListener;

.field j:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

.field k:Landroid/content/DialogInterface$OnCancelListener;

.field l:Landroid/content/DialogInterface$OnCancelListener;

.field m:Landroid/content/DialogInterface$OnCancelListener;

.field n:Landroid/content/DialogInterface$OnCancelListener;

.field private o:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/lang/Thread;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "fund manage begin"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->r:Ljava/lang/String;

    const-string/jumbo v0, "fund manage end"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->s:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->t:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->g:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->i:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->j:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$6;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$6;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->k:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$7;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$7;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->l:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$8;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$8;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->m:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$9;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$9;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->n:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;Ljava/lang/Boolean;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b(Ljava/lang/Boolean;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->p:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :goto_1
    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->p:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;Z)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setNoPayPwd(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    const-string/jumbo v0, "190"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;->getResultCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "191"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;->getResultCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cn:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "192"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;->getResultCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->as:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    if-nez p2, :cond_7

    move v0, v2

    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchReq;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchReq;->setLoginId(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;->queryFreePwdSwitch(Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/QueryFreePwdSwitchRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=queryToggle], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v0
.end method

.method private b(Ljava/lang/Boolean;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setLoginId(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setEncryptPaymentPwd(Ljava/lang/String;)V

    const-string/jumbo v1, "ON"

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setSetSwitchType(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->q:Ljava/lang/Thread;

    invoke-interface {v0, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;->setFreePwdSwitch(Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=SetFreePwdSwitchRes], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->dismissProgressDialog()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    :goto_1
    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "OFF"

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setSetSwitchType(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->q:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private f()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;->setLogonId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

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

.method static synthetic g(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private g()Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setLoginId(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setEncryptPaymentPwd(Ljava/lang/String;)V

    const-string/jumbo v1, "ON"

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setSetSwitchType(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setHasSmsCertification(I)V

    invoke-interface {v0, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/FreePasswordSwitchFacade;->setFreePwdSwitch(Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=SetFreePwdSwitchRes], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v0
.end method

.method static synthetic h(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->g()Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchRes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->t:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b()V

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bt:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bs:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method protected b()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isNoPayPwd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->p:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->p:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->j:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->am:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->f:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$11;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$11;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
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

.method protected e()V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->f()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->dismissProgressDialog()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bq:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->az:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$12;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$12;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$13;

    invoke-direct {v6, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$13;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "702"

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "20000024"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "smallDenseFreeView"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "seePush"

    const/4 v0, 0x5

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v3, ""

    aput-object v3, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v12, v0

    const/4 v0, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v12, v0

    const/4 v0, 0x4

    const-string/jumbo v3, ""

    aput-object v3, v12, v0

    move-object v0, p0

    move-object v3, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 4

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onRestart()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
