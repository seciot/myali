.class public abstract Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "BasicConfirmActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "BasicConfirmActivity"

    sput-object v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->d:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->e:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->f:Ljava/lang/String;

    return-void
.end method

.method protected static c()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;
    .locals 2

    .prologue
    .line 147
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

    .line 148
    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    instance-of v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "C2C_"

    .line 71
    :goto_0
    return-object v0

    .line 68
    :cond_0
    instance-of v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;

    if-eqz v0, :cond_1

    .line 69
    const-string/jumbo v0, "C2B_"

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 52
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    .locals 21
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    sget-object v3, Lcom/alipay/mobile/onsitepay/a/a/a;->f:[J

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 108
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 110
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v12

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->f:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "ZD"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->tradeNo:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "orderpay"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->c:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string/jumbo v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "alipayclient"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->e()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ZD_SUCCESS"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string/jumbo v4, "\u6210\u529f\u4ed8\u6b3e"

    .line 120
    const-string/jumbo v3, ""

    .line 121
    const-string/jumbo v2, ""

    .line 122
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->realAmount:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->realAmount:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\u5143"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->promoUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->promoUrl:Ljava/lang/String;

    .line 128
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->dynamicId:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->dynamicId:Ljava/lang/String;

    .line 131
    :cond_2
    const-string/jumbo v6, "needPayResultAck"

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const-string/jumbo v6, "paysucceedMsg"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v4, "promoUrl"

    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v3, "dynamicId"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->finish()V

    .line 137
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 21
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->f:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "KJ"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "orderpay"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->c:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string/jumbo v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "alipayclient"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->e()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "KJ_SUCCESS"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->finish()V

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->dismissProgressDialog()V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 197
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v5

    .line 198
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v8, "KJ"

    iget-object v9, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v12, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "callcashier"

    aput-object v6, v12, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v12, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "y"

    aput-object v6, v12, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "alipayclient"

    aput-object v6, v12, v5

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 201
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    .line 203
    const-string/jumbo v0, "trade"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizType(Ljava/lang/String;)V

    .line 204
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizSubType(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bizType"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getBizType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " BizSubType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getBizSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " OrderNo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getOrderNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " OrderToken"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getOrderToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    .line 214
    new-instance v2, Lcom/alipay/mobile/onsitepay/payer/confirm/a;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/a;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 232
    return-void
.end method

.method protected a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->f:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "KJ"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p3, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "orderpay"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->c:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string/jumbo v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "alipayclient"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "reason:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->finish()V

    .line 83
    return-void
.end method

.method protected final b(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->dismissProgressDialog()V

    .line 154
    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->success:Z

    if-nez v0, :cond_3

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->attachAction:Ljava/lang/String;

    .line 157
    const-string/jumbo v1, "DELSEED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/otp/OtpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/otp/OtpManager;->deleteSeed()V

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->tradeNo:Ljava/lang/String;

    .line 164
    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->resultDes:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->toast(Ljava/lang/String;I)V

    .line 177
    :goto_0
    return-void

    .line 168
    :cond_2
    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->bizSubType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 171
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 172
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 21
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    const-string/jumbo v2, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u5931\u8d25"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->f:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "KJ"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "orderpay"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->c:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string/jumbo v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "alipayclient"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string/jumbo v16, "reason:\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u5931\u8d25CashierPayInstallFailed"

    aput-object v16, v14, v15

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->finish()V

    .line 100
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 182
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    .line 185
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->createLiveConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method
