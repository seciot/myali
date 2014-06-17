.class public Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

.field private b:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

.field private c:Z

.field private d:Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

.field private e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v2, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->f:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->h:Z

    new-instance v0, Lcom/alipay/android/widgets/asset/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/c;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->a:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->b:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    new-instance v0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-direct {v0, p3}, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->d:Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "WealthHome"

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c:Z

    return v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widgets/asset/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/d;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->b:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isOpenWap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->d:Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->a()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->h:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "logonId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=login sucess,logonId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->h:Z

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8bbe\u7f6e\u9996\u9875rpc\u72b6\u6001,doRpc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",logonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widgets/asset/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/e;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->b()V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->a:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a()V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/misc/ExtStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isGestureSkip()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c()V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.android.main.avatar.action.changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->a:Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "closeShowWapAfter10s(),showWap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "state=onResume"

    const-string/jumbo v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive-Data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "state=settingGestureSucessAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "state=validateGestureSucessAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c()V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive is null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method
