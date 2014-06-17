.class final Lcom/alipay/mobile/alipassapp/viewcontrol/b;
.super Lcom/alipay/mobile/alipassapp/ui/common/a;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 9

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/b;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/alipay/mobile/alipassapp/ui/common/a;->onClick(Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/b;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000030"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "couponBackDetails"

    const-string/jumbo v8, "open"

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/b;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/b;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/b;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TRAVEL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000021"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "travelItineraryBackDetails"

    const-string/jumbo v8, "open"

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/b;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/b;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
