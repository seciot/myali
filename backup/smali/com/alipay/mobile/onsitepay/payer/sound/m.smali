.class final Lcom/alipay/mobile/onsitepay/payer/sound/m;
.super Ljava/lang/Object;
.source "SendSoundViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/m;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20
    .parameter

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payer/sound/m;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "kf"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "C2C"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/onsitepay/payer/sound/m;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v10}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->j(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/sound/m;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->w()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "-"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "kf"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "lbs"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/m;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->k(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string/jumbo v15, "y"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "alipayclient"

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 332
    check-cast p1, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payer/sound/m;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->userInfo:Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;

    iget-object v2, v2, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->userId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->userInfo:Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;

    iget-object v3, v3, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->userInfo:Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;

    iget-object v4, v4, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->headImageUrl:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->userInfo:Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;

    iget-object v5, v5, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->account:Ljava/lang/String;

    const-string/jumbo v6, "lbs"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/onsitepay/payer/sound/m;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v7}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method
