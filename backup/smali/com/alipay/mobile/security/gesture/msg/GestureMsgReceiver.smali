.class public Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final a:Ljava/lang/String;

.field b:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field c:Landroid/app/ActivityManager;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo v0, "GestureMsgReceiver"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->d:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6536\u5230\u4e86\u5e94\u7528\u7684\u5e7f\u64ad\u7c7b\u578b\uff1a "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->b:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->b:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->c:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->c:Landroid/app/ActivityManager;

    :cond_1
    const-string/jumbo v0, "com.alipay.mobile.framework.ACTIVITY_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "currentTimes-leaveTimes"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getLastUserLeavehint()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->c:Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->d:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isChangeTime()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverrangingLeavehintTime()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->b:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateGesture()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setLastUserLeavehint(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->d:J

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string/jumbo v0, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->d:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "leaveTimes:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/security/gesture/msg/GestureMsgReceiver;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setLastUserLeavehint(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u538b\u540e\u53f0\u5e7f\u64ad\u51fa\u73b0\u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
