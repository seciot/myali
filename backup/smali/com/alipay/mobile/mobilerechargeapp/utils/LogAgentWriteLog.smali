.class public Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "10000003Home"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "todo"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "10000003Home"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "publicplatform"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    aput-object p1, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 14

    if-eqz p1, :cond_0

    const-string/jumbo v7, "remindManageView"

    :goto_0
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "\uff0d"

    const-string/jumbo v8, "switchOpen"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v7, "phoneRechargeResultView"

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "10000003Home"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 14

    if-eqz p1, :cond_0

    const-string/jumbo v7, "remindManageView"

    :goto_0
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v8, "switchClose"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v7, "phoneRechargeResultView"

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "addPhoneRemindView"

    const-string/jumbo v7, "remindManageView"

    const-string/jumbo v8, "addPhoneRemind"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "remindManageView"

    const-string/jumbo v7, "addPhoneRemindView"

    const-string/jumbo v8, "confirmButton"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "10000003Home"

    const-string/jumbo v8, "rechargeButton"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "phoneRechargeResultView"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "success|fail"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "phoneRechargeResultView"

    const-string/jumbo v8, "cms"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 14

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "10000003"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "phoneRechargeResultView"

    const-string/jumbo v8, "finishButton"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v13, "alipay"

    aput-object v13, v12, v0

    const/4 v0, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    const/4 v0, 0x2

    const-string/jumbo v13, "-"

    aput-object v13, v12, v0

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
