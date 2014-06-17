.class public Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field mParam:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    return-object v0
.end method

.method public getEntryClassName()Ljava/lang/String;
    .locals 20

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v2, "b"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v2, "tagfrom"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v2, "has_past"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v7, "has_member_data"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object v7, v2

    move-object v14, v3

    move-object v15, v5

    move-object/from16 v16, v6

    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_0

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    if-eqz v15, :cond_8

    const-string/jumbo v1, "push"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "t"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000021"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "travelItineraryDetails"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "seePush"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v13, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string/jumbo v19, "tagid"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_2
    const-string/jumbo v1, "push"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "c"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000030"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "couponDetails"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "seePush"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v17, "tagid"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_3
    const-string/jumbo v1, "c"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "t"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    const-class v1, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v1, "todo"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "t"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000021"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "travelItineraryDetails"

    const-string/jumbo v8, "todoList"

    const-string/jumbo v9, "seeTodo"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v13, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string/jumbo v19, "tagid"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v1, "todo"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "c"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "20000030"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "couponDetails"

    const-string/jumbo v8, "todoList"

    const-string/jumbo v9, "seeTodo"

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v17, "tagid"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v1, "m"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    const-class v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    if-eqz v16, :cond_a

    const-string/jumbo v2, "c"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "20000030"

    const-string/jumbo v4, "myCouponList"

    const-string/jumbo v5, "exploreHome"

    const-string/jumbo v6, "myCoupon"

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    const-class v1, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v2, "m"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_b

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    const-class v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    if-eqz v16, :cond_e

    const-string/jumbo v1, "t"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "20000021"

    const-string/jumbo v4, "myTravelList"

    const-string/jumbo v5, "exploreHome"

    const-string/jumbo v6, "myTravel"

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_f
    const-class v1, Lcom/alipay/mobile/alipassapp/ui/TravelCurrentListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_10
    move-object v7, v2

    move-object v14, v3

    move-object v15, v5

    move-object/from16 v16, v6

    move-object v2, v4

    goto/16 :goto_0
.end method

.method public getParamByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->mParam:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getEntryClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
