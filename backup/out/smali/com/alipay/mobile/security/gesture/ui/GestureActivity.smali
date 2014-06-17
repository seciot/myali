.class public Lcom/alipay/mobile/security/gesture/ui/GestureActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field b:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

.field private c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field private e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:Lcom/alipay/mobile/base/config/ConfigService;

.field private m:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "GestureActivity"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->h:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setChangeTime(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_8

    const-string/jumbo v0, "setORcheck"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v4, "canBack"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->g:Z

    const-string/jumbo v4, "GestureShowSkipBtn"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->j:Z

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2, v3, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cachedUserInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";gesturepwd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    if-nez v2, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b()V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string/jumbo v2, ""

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    new-instance v2, Lcom/alipay/mobile/security/gesture/ui/g;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/gesture/ui/g;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setOnPatternChangeListener(Lcom/alipay/mobile/security/gesture/component/j;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->TryToSetPattern(Z)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->l:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->l:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "GestureShipJumpBtn"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NO"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->l:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v3, "GestureShipJumpBtn"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setIsShowSkipButton(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/c;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setOnPatternCheckedListener(Lcom/alipay/mobile/security/gesture/component/k;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->checkPattern(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->checkGestureErrorAlert(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto/16 :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b()V

    goto/16 :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b()V

    goto/16 :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b()V

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    move-object v2, v3

    goto/16 :goto_0
.end method

.method private a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureErrorNum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private b()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000008"

    :try_start_0
    const-string/jumbo v2, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "doStartApp"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "false"

    const-string/jumbo v3, "0"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUserInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f()V

    invoke-virtual {p0, p1, v4, v4}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loginId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    return-object v0
.end method

.method private static c()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userInfo"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/util/SHA1;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, "false"

    const-string/jumbo v3, "0"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "setGestureView"

    const-string/jumbo v2, "setGesture"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    const-string/jumbo v1, "state=settingGestureSucessAction"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/h;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/h;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static d()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureErrorNum(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUserInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setHasGestureView(Z)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000006"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->finish()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getmLockView()Lcom/alipay/mobile/security/gesture/component/LockView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "currentUserLoginState"

    const-string/jumbo v2, "false"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 4

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->SLIDED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "checkGestureView"

    const-string/jumbo v2, "checkGesture"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    const-string/jumbo v1, "state=validateGestureSucessAction"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/b;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "checkGestureView"

    const-string/jumbo v3, "forgetGesture"

    invoke-direct {p0, v0, v2, v3}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->r:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->s:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/a;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/a;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    move-object v0, p0

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/security/gesture/component/AlipayPattern;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/d;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic k(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->p:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/e;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/e;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/a/f;->a:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/security/gesture/ui/f;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/security/gesture/ui/f;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic l(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->h:Z

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;

    new-instance v2, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;

    invoke-direct {v2}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;-><init>()V

    invoke-virtual {v2, p1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setLogonId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setWalletTid(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u6210\u529f walletTid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setWalletClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setClientId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspTid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspClientKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspImei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspImsi(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-interface {v0, v2}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;->logout(Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;)Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c()V

    throw v0
.end method

.method protected a(Ljava/lang/String;ZZ)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "allowBack"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "source_gesture"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "gestureswitchaccount"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->m:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->clearLoginUserInfo()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->m:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->m:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, "logonId"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i:Z

    sget v0, Lcom/alipay/mobile/a/e;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->setContentView(I)V

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    sget v0, Lcom/alipay/mobile/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->l:Lcom/alipay/mobile/base/config/ConfigService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->m:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->h:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/a/f;->q:I

    invoke-static {p0, v0, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/i;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/i;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_STATUS_CHANGED"

    const-string/jumbo v1, "state=onPause"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_STATUS_CHANGED"

    const-string/jumbo v1, "state=onResume"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i:Z

    :cond_0
    return-void
.end method
