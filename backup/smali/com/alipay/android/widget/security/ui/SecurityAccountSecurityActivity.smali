.class public Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_accountsecurity"
.end annotation


# static fields
.field private static final v:Ljava/lang/Integer;

.field private static final w:Ljava/lang/Integer;

.field private static final x:Ljava/lang/Integer;


# instance fields
.field private A:Z

.field private B:Lcom/alipay/mobile/base/config/ConfigService;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/commonui/widget/APTableView;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "modifyPayPassword"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "getPayPassword"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "modifyLoginPassword"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loginLog"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "rapidLostReport"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "authorizationManager"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "deviceManager"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "operationRecord"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "smsGuard"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_pay_illustration_link"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "lastScore"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "levelScore"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securityLevel"
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field protected o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected p:Ljava/lang/String;

.field q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field protected r:Landroid/support/v4/content/LocalBroadcastManager;

.field protected s:Landroid/content/BroadcastReceiver;

.field protected t:Landroid/content/BroadcastReceiver;

.field u:Landroid/content/DialogInterface$OnClickListener;

.field private final y:Ljava/lang/String;

.field private z:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->v:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->w:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->x:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->p:Ljava/lang/String;

    const-string/jumbo v0, "change login password end"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->z:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->u:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/commonui/widget/APTableView;I)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    const/16 v0, 0x10

    if-eq v0, p2, :cond_0

    const/16 v0, 0x11

    if-ne v0, p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APTableView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x4160

    invoke-static {v1, p0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 8

    const/16 v7, 0x12

    const/16 v6, 0x11

    const/4 v5, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v4, 0x10

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/commonui/widget/APTableView;I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-ne v3, v5, :cond_4

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/commonui/widget/APTableView;I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-direct {p0, v0, v7}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/commonui/widget/APTableView;I)V

    goto :goto_1

    :cond_4
    if-le v3, v5, :cond_0

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/commonui/widget/APTableView;I)V

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-direct {p0, v0, v7}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/commonui/widget/APTableView;I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v4, 0x13

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/commonui/widget/APTableView;I)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :cond_2
    return-void
.end method

.method protected a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method protected final b()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->C:Ljava/util/List;

    const-string/jumbo v1, "Security_RapidLostReport"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->C:Ljava/util/List;

    const-string/jumbo v1, "Security_ShowDeviceManagement"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->C:Ljava/util/List;

    const-string/jumbo v1, "Security_AccountAuthorizeManage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->C:Ljava/util/List;

    const-string/jumbo v1, "Security_SmsGuard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    const-string/jumbo v1, "Security_RapidLostReport"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    const-string/jumbo v1, "Security_ShowDeviceManagement"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    const-string/jumbo v1, "Security_AccountAuthorizeManage"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    const-string/jumbo v1, "Security_SmsGuard"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->B:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "YES"

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->B:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u53d6\u52a8\u6001\u914d\u7f6e\u9875\u9762\u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->c()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->h:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPostRefreshWidget loginId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->findSecurityLevel(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->z:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    const-string/jumbo v0, "examinationSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->A:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x0

    const/16 v1, 0x8

    invoke-static {p1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->z:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getView score: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->z:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->z:Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->getScore()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    const/16 v0, 0x64

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$color;->b:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x22

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$color;->d:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bP:I

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "accountLoginLogView"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "accountLogin"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "launchType"

    const-string/jumbo v2, "loginLogsWelcome"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000055"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_8

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dc:I

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "quickReportLossIndex"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "quickReportLoss"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000068"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->O:I

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "accountAuthorizationView"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "accountAuthorization"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "launchType"

    const-string/jumbo v2, "manage"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000055"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cG:I

    if-ne v0, v1, :cond_4

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "accountOperationLogView"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "accountOperation"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "launchType"

    const-string/jumbo v2, "authorizeLogs"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000055"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fI:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000117"

    invoke-interface {v0, v9, v1, v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cm:I

    if-ne v0, v1, :cond_6

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "modifyPayPwdView"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "modifyPayPwd"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000016"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bn:I

    if-ne v0, v1, :cond_8

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "foundPayPwdView"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "foundPayPwd"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->W:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, v9

    move-object v4, v9

    move-object v5, v9

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    :try_start_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000013"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cl:I

    if-ne v0, v1, :cond_9

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "modifyLoginPwdView"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "modifyLoginPwd"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000017"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dN:I

    if-ne v0, v1, :cond_a

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "securityCheckUpIndex"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "checkUp"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000043"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->eW:I

    if-ne v0, v1, :cond_b

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "guarantee"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->cI:I

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->o:I

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, v9

    move-object v4, v9

    move-object v5, v9

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_b
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->aQ:I

    if-ne v0, v1, :cond_0

    :try_start_8
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000115"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_8
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_8
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->n:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->B:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->r:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->C:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->E:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->D:Ljava/util/List;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->r:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->r:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->r:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->r:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "moreHome"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "backIcon"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->o:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->q:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->p:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityAccountSecurityActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
