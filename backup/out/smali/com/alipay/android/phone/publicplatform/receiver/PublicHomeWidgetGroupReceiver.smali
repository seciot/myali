.class public Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PublicHomeWidgetGroupReceiver.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EReceiver;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PublicHomeWidgetGroupReceiver"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private b:Ljava/util/Timer;

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->c:J

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->d:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->e:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->f:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 61
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "public home widget receivce message"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    const-string/jumbo v2, "com.alipay.mobile.intent.action.UPDATETODOLIST"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    const-string/jumbo v1, "refreshNow"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->e:Z

    goto :goto_0

    .line 74
    :cond_3
    const-string/jumbo v2, "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    goto :goto_0

    .line 78
    :cond_4
    const-string/jumbo v2, "com.alipay.security.login"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchAccount Login "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->notifyMsgCountUpdate()V

    .line 90
    sget-object v2, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    if-eqz v2, :cond_5

    .line 91
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->queryUserFollowAccountFromLocal(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 94
    sget-object v3, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->reloadPublichomeList(Ljava/util/List;)V

    .line 98
    :cond_5
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->f:Ljava/lang/String;

    .line 100
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->d:Z

    .line 101
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    goto/16 :goto_0

    .line 103
    :cond_6
    const-string/jumbo v2, "com.alipay.security.logout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 104
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->d:Z

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->b:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->b:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto/16 :goto_0

    .line 108
    :cond_7
    const-string/jumbo v2, "com.alipay.mobile.android.main.publichome.add"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 109
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    goto/16 :goto_0

    .line 111
    :cond_8
    const-string/jumbo v2, "com.alipay.mobile.android.main.publichome.remove"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 112
    const-string/jumbo v1, "objectId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_1

    .line 117
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->removeLocalFollow(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    sget-object v2, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    if-eqz v2, :cond_1

    .line 122
    sget-object v2, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_9
    const-string/jumbo v2, "com.alipay.mobile.android.main.publichome.sorttimeupdate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 127
    const-string/jumbo v1, "objectId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string/jumbo v1, "msgTime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string/jumbo v2, "msgDesc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    const-string/jumbo v2, "thirdAccount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    const-string/jumbo v2, "lastOperateTime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    if-nez v7, :cond_a

    const-string/jumbo v7, ""

    .line 133
    :cond_a
    if-nez v4, :cond_b

    const-string/jumbo v4, ""

    .line 134
    :cond_b
    if-nez v1, :cond_c

    const-string/jumbo v1, "0"

    .line 136
    :cond_c
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 139
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v11

    .line 145
    if-eqz v11, :cond_1

    .line 148
    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v11, :cond_d

    .line 150
    if-eqz v10, :cond_e

    .line 151
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v1

    invoke-virtual {v11}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Z

    .line 160
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v1

    invoke-virtual {v11}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->updateUnReadMsgCount(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 164
    :cond_d
    sget-object v1, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    if-eqz v1, :cond_1

    .line 165
    if-eqz v10, :cond_f

    .line 166
    sget-object v8, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    const/4 v14, 0x0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object v9, v3

    move-wide v10, v5

    move-object v12, v7

    move-object v13, v4

    invoke-virtual/range {v8 .. v16}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->updatePublicObject(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 155
    :cond_e
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v1

    invoke-virtual {v11}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->updateThirdPartyLastMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    goto :goto_1

    .line 169
    :cond_f
    sget-object v8, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    const/4 v14, 0x0

    move-object v9, v3

    move-wide v10, v5

    move-object v12, v7

    move-object v13, v4

    invoke-virtual/range {v8 .. v14}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->updatePublicObject(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 174
    :cond_10
    const-string/jumbo v2, "com.alipay.mobile.android.main.publichome.refresh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 175
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    goto/16 :goto_0

    .line 177
    :cond_11
    const-string/jumbo v2, "notifyHomeRefresh"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 179
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    goto/16 :goto_0

    .line 180
    :cond_12
    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    const-string/jumbo v1, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->e:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "20000101"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 184
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->reload(Z)V

    .line 186
    :cond_13
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->e:Z

    goto/16 :goto_0

    .line 141
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method protected reload(Z)V
    .locals 8
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/alipay/mobile/publicsvc/home/proguard/a/b;

    const-string/jumbo v1, "YWUC-GZPT-C36"

    const-string/jumbo v2, "none"

    const-string/jumbo v3, "public"

    const-string/jumbo v4, "publicIndexList"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "ppmainAutoRefresh"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/home/proguard/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/a/a;->a(Lcom/alipay/mobile/publicsvc/home/proguard/a/b;)V

    .line 202
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->queryUserFollowAccountFromRemote()Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v0

    .line 205
    iget-boolean v1, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->d:Z

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->b:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->b:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 209
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->b:Ljava/util/Timer;

    .line 210
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->b:Ljava/util/Timer;

    new-instance v2, Lcom/alipay/android/phone/publicplatform/receiver/a;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/publicplatform/receiver/a;-><init>(Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;)V

    iget-wide v3, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->c:J

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver;->d:Z

    .line 218
    :cond_1
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 221
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->syncFollowAccountInfoToLocal(Lcom/alipay/publiccore/client/result/OfficialHomeListResult;)Ljava/util/List;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    if-eqz v1, :cond_3

    .line 224
    if-eqz p1, :cond_2

    .line 225
    sget-object v1, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->scrollToTop()V

    .line 227
    :cond_2
    sget-object v1, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->reloadPublichomeList(Ljava/util/List;)V

    .line 230
    :cond_3
    return-void
.end method
