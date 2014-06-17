.class public abstract Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "BasicFacePayerActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile e:Ljava/lang/String;

.field protected f:Z

.field protected g:J

.field protected h:Z

.field protected i:Ljava/lang/Boolean;

.field protected j:J

.field private k:Z

.field private l:I

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "BasicFacePayerAcitivity"

    sput-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "com.alipay.longlink.TRANSFER_10000014"

    sput-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 59
    const-string/jumbo v0, "OTP"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->c:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d:Ljava/util/List;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->f:Z

    .line 70
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->h:Z

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->i:Ljava/lang/Boolean;

    .line 306
    iput v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->l:I

    .line 477
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/g;-><init>(Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected static c()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 212
    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    return-object v0
.end method

.method protected static e()Lcom/alipay/mobile/security/otp/OtpManager;
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/otp/OtpManager;

    return-object v0
.end method

.method protected static f()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method protected static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->f()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 238
    :cond_0
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 245
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 246
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method private n()Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    const-string/jumbo v2, "OTP"

    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->c:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->h()Ljava/lang/String;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->h:Z

    .line 134
    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    sget-object v2, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->f()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/alipay/mobile/onsitepay/payer/e;

    invoke-direct {v4, p0, v2, v3}, Lcom/alipay/mobile/onsitepay/payer/e;-><init>(Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Handler;)V

    invoke-static {v4}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    if-eqz v0, :cond_0

    .line 144
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->h:Z

    goto :goto_0

    .line 141
    :cond_2
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d()V

    move v0, v1

    goto :goto_1

    .line 146
    :cond_3
    sget-object v1, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 147
    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->h:Z

    .line 148
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->b()V

    goto :goto_0
.end method

.method protected final a(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter

    .prologue
    .line 458
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 459
    const-string/jumbo v1, "seed_init_complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->n()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 461
    return-void
.end method

.method protected final a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 20
    .parameter

    .prologue
    .line 436
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "startDeviceAuth"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v2, 0x5

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v15, "kf"

    aput-object v15, v14, v2

    const/4 v2, 0x1

    const-string/jumbo v15, "startDeviceAuth"

    aput-object v15, v14, v2

    const/4 v2, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->j:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v2

    const/4 v2, 0x3

    const-string/jumbo v15, "y"

    aput-object v15, v14, v2

    const/4 v2, 0x4

    const-string/jumbo v15, "alipayclient"

    aput-object v15, v14, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 439
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    .line 441
    const-string/jumbo v2, "prepay_initial"

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizType(Ljava/lang/String;)V

    .line 442
    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizSubType(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    .line 445
    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 448
    return-void
.end method

.method public abstract a(Lorg/json/JSONObject;Ljava/lang/String;)V
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/alipay/mobile/onsitepay/exception/FacepaymentException;

    const-string/jumbo v1, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/onsitepay/exception/FacepaymentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->n()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 465
    return-void
.end method

.method public abstract b(Lorg/json/JSONObject;Ljava/lang/String;)V
.end method

.method public abstract c(Lorg/json/JSONObject;Ljava/lang/String;)V
.end method

.method protected abstract d()V
.end method

.method public d(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 400
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f00\u5173\u7684\u72b6\u6001continueLoop=:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->i:Ljava/lang/Boolean;

    monitor-enter v1

    .line 406
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;-><init>()V

    const-string/jumbo v2, "10000013"

    iput-object v2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    const-string/jumbo v2, "10000013HOME"

    iput-object v2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    const-string/jumbo v2, "looporder"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "getResultFromQuery"

    iput-object v2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->seed:Ljava/lang/String;

    :goto_0
    const-string/jumbo v2, "s"

    iput-object v2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourPro:Ljava/lang/String;

    const-string/jumbo v2, "c"

    iput-object v2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->logPro:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->extendParams:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v1

    .line 433
    :cond_0
    :goto_1
    return-void

    .line 406
    :cond_1
    const-string/jumbo v2, "pushorder"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "getResultFromLong"

    iput-object v2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->seed:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 406
    :cond_2
    :try_start_1
    const-string/jumbo v2, "unexpect"

    iput-object v2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->seed:Ljava/lang/String;

    goto :goto_0

    .line 409
    :cond_3
    const-string/jumbo v0, "attachAction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string/jumbo v2, "DELSEED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e()Lcom/alipay/mobile/security/otp/OtpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/otp/OtpManager;->deleteSeed()V

    .line 414
    :cond_4
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget-object v3, Lcom/alipay/mobile/onsitepay/a/a/a;->f:[J

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 418
    const-string/jumbo v0, "soundWavePaySuccessPush"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 429
    :cond_5
    :goto_2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    .line 430
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->i:Ljava/lang/Boolean;

    .line 431
    monitor-exit v1

    goto :goto_1

    .line 420
    :cond_6
    const-string/jumbo v0, "getGoodsList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 421
    const-string/jumbo v0, "dynamicId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 426
    :cond_7
    const-string/jumbo v0, "fastpay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->c(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e()Lcom/alipay/mobile/security/otp/OtpManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/otp/OtpManager;->OTP_SOUND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/otp/OtpManager;->getDynamicOtp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    .line 313
    return-void
.end method

.method protected j()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 331
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->i:Ljava/lang/Boolean;

    .line 332
    const-string/jumbo v2, "ONSITE_ANDROID_PAYER_POLLINGQUERY_SWITCH"

    invoke-static {v2}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loopQuerySwitch="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_2

    .line 360
    :cond_1
    return-void

    .line 335
    :cond_2
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loopQueryTask dynamicId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    .line 337
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->l:I

    .line 338
    iget v2, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->l:I

    move v0, v1

    .line 339
    :goto_0
    const/16 v3, 0x64

    if-ge v0, v3, :cond_1

    .line 340
    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loopQueryTask continueLoop="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    iget-boolean v3, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    if-eqz v3, :cond_1

    .line 342
    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loopQueryTask mDynamicId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 345
    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loopQueryTask needLoopQuery()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loopQueryTask currentLoopQueryTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " excuteloopQueryTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    iget v3, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->l:I

    if-ne v2, v3, :cond_1

    .line 351
    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fc7\u6ee4\u540e:\u7b2c{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}\u6b21\u8c03\u7528loopQueryTask,\u52a8\u6001\u7801:{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}  \u77ed\u8f6e\u8be2\u7b2c{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}\u6b21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    if-ne v0, v1, :cond_4

    .line 354
    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 358
    :goto_1
    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->m()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerReq;

    invoke-direct {v3}, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerReq;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerReq;->dynamicId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerReq;->userId:Ljava/lang/String;

    sget-object v4, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_5

    .line 339
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 356
    :cond_4
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 358
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->c()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->queryBuySoundWavePayRes(Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerReq;)Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerRes;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerRes;->queryOrNo:Z

    if-nez v4, :cond_6

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    :cond_6
    iget-boolean v4, v3, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerRes;->success:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "looporder"

    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u8f6e\u8be2\u67e5\u8be2\u4ed8\u6b3e\u65b9\u63a5\u6536\u72b6\u6001 getJsonData= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_7
    :try_start_4
    iget-boolean v4, v3, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerRes;->success:Z

    if-nez v4, :cond_3

    iget-boolean v3, v3, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerRes;->queryOrNo:Z

    if-ne v3, v1, :cond_3

    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_8
    :try_start_5
    sget-object v3, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method protected abstract k()Z
.end method

.method protected final l()V
    .locals 3

    .prologue
    .line 468
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    sget-object v1, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->n()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 471
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    .line 125
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 126
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    .line 110
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 111
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->l()V

    .line 96
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onRestart()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->i:Ljava/lang/Boolean;

    .line 103
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 104
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 89
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStart()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->k:Z

    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->n()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStop()V

    .line 119
    return-void
.end method
