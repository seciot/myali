.class public Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;
.super Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;
.source "SendSoundViewActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "sendsound_pay_activity"
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

.field private D:Z

.field private E:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

.field private F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

.field k:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:[Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

.field r:Landroid/widget/PopupWindow;

.field s:Z

.field t:Landroid/view/View$OnClickListener;

.field u:Landroid/view/View$OnClickListener;

.field v:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;

.field w:Landroid/content/BroadcastReceiver;

.field private x:Z

.field private y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

.field private z:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->x:Z

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q:[Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    .line 99
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->A:Z

    .line 100
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    .line 104
    iput-boolean v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s:Z

    .line 109
    iput-boolean v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->D:Z

    .line 326
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/m;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/m;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->t:Landroid/view/View$OnClickListener;

    .line 392
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/n;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/n;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->E:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    .line 606
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/o;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->u:Landroid/view/View$OnClickListener;

    .line 824
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/f;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->v:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;

    .line 881
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/g;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->w:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 595
    return-void
.end method

.method private B()V
    .locals 5

    .prologue
    .line 629
    :try_start_0
    sget v0, Lcom/alipay/mobile/onsitepay/e;->l:I

    .line 630
    iget-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->x:Z

    if-eqz v1, :cond_0

    .line 631
    sget v0, Lcom/alipay/mobile/onsitepay/e;->m:I

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "promptFlag"

    const-string/jumbo v3, "true"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/onsitepay/payer/sound/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 634
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 635
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    .line 637
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 638
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 640
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    const/16 v2, 0x77

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 641
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    sget v1, Lcom/alipay/mobile/onsitepay/d;->J:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 643
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static C()Z
    .locals 3

    .prologue
    .line 853
    const-string/jumbo v0, "ONSITE_ANDROID_PAYER_LBS_SWITCH"

    invoke-static {v0}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ONSITE_ANDROID_PAYER_LBS_SWITCH="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startSend dynamicId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  dynamicIdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "SendingData.wav"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->setBkSoundWave4MixFromAsset(Landroid/content/Context;Ljava/lang/String;)Z

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    const/16 v2, 0x1e

    const/4 v3, 0x2

    const/16 v4, 0x46

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->E:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->startSendData(Ljava/lang/String;IIILandroid/content/Context;Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;)Z

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->j:J

    .line 370
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->j()V

    .line 376
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v8, 0x5

    new-array v12, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "kf"

    aput-object v9, v12, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "sendwave"

    aput-object v9, v12, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ""

    aput-object v9, v12, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "y"

    aput-object v9, v12, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "alipayclient"

    aput-object v9, v12, v8

    move-object v8, p2

    move-object v9, p1

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 692
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->f()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->t()V

    .line 694
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 695
    const-string/jumbo v2, "dynamicId"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string/jumbo v2, "extern_token"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string/jumbo v0, "fromAppid"

    const-string/jumbo v2, "10000014"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string/jumbo v0, "payeeName"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string/jumbo v0, "payeeUserId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string/jumbo v0, "headImageUrl"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string/jumbo v0, "payeeAccount"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const-string/jumbo v0, "c2cpaytype"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    const-class v0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 704
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 705
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->C:Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->A()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->j:J

    return-wide v0
.end method

.method static synthetic l(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B:Z

    return v0
.end method

.method static synthetic v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()Z
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "promptFlag"

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r()V

    .line 354
    :goto_0
    return-void

    .line 348
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a()V

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/onsitepay/exception/FacepaymentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/exception/FacepaymentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->z:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->z:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->z:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    .locals 21
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceiveDynamicId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;->dynamicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;->success:Z

    if-eqz v2, :cond_3

    .line 567
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;->dynamicId:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u83b7\u53d6\u52a8\u6001ID\u6210\u529f mDynamicId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " wave_button.isWaveNow()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "SC"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "kf"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "applyid"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g:J

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

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 579
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    const-string/jumbo v3, "SC"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_1
    :goto_1
    return-void

    .line 567
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;->dynamicId:Ljava/lang/String;

    goto/16 :goto_0

    .line 582
    :cond_3
    const-string/jumbo v2, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u70b9\u51fb\u91cd\u8bd5"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 591
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 23
    .parameter
    .parameter

    .prologue
    .line 651
    const-string/jumbo v2, "amount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 652
    const-string/jumbo v3, "promoUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 653
    const-string/jumbo v3, "dynamicId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "amount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " promoUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dynamicId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6210\u529f\u4ed8\u6b3e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 656
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s()V

    .line 658
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "C2B"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v2, 0x5

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v18, "kf"

    aput-object v18, v14, v2

    const/4 v2, 0x1

    aput-object p2, v14, v2

    const/4 v2, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->j:J

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v2

    const/4 v2, 0x3

    const-string/jumbo v18, "y"

    aput-object v18, v14, v2

    const/4 v2, 0x4

    const-string/jumbo v18, "alipayclient"

    aput-object v18, v14, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 662
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "ZD"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v2, 0x5

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v18, "kf"

    aput-object v18, v14, v2

    const/4 v2, 0x1

    const-string/jumbo v18, "orderpay"

    aput-object v18, v14, v2

    const/4 v2, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->j:J

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v2

    const/4 v2, 0x3

    const-string/jumbo v18, "y"

    aput-object v18, v14, v2

    const/4 v2, 0x4

    const-string/jumbo v18, "alipayclient"

    aput-object v18, v14, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 665
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    const-string/jumbo v3, "needPayResultAck"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    const-string/jumbo v3, "paysucceedMsg"

    invoke-virtual {v2, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const-string/jumbo v3, "dynamicId"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string/jumbo v3, "promoUrl"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    .line 671
    return-void

    .line 655
    :cond_0
    const-string/jumbo v2, "\u4ed8\u6b3e\u6210\u529f"

    move-object v15, v2

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 490
    :try_start_0
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 506
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 496
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->A:Z

    if-nez v0, :cond_1

    .line 501
    :try_start_1
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B:Z

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "misHeadSetOn  ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->A:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B:Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "phoneBlackList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  \u9ed1\u540d\u5355\u4fe1\u606f black="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string/jumbo v2, "micBottom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->x:Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {v0, p1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->setPhoneConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CheckPhoneBlack blacks="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    :cond_2
    return-void

    .line 818
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 675
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->f()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v2

    .line 676
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 677
    const-string/jumbo v4, "responseStr"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string/jumbo v4, "extern_token"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string/jumbo v2, "fromAppid"

    const-string/jumbo v4, "10000014"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-class v2, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 686
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "C2B"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v2, 0x5

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v15, "kf"

    aput-object v15, v14, v2

    const/4 v2, 0x1

    aput-object p2, v14, v2

    const/4 v2, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->j:J

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

    .line 689
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s()V

    .line 878
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 21
    .parameter
    .parameter

    .prologue
    .line 710
    const-string/jumbo v2, "payeeName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, ""

    .line 712
    :goto_0
    const-string/jumbo v2, "payeeAccount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 713
    const-string/jumbo v2, "headImageUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 714
    const-string/jumbo v2, "dynamicId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 715
    const-string/jumbo v3, ""

    const-string/jumbo v7, "otp"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "C2C"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "kf"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->j:J

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

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 720
    return-void

    .line 710
    :cond_0
    const-string/jumbo v2, "payeeName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected d()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 861
    :try_start_0
    new-instance v0, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdReq;

    invoke-direct {v0}, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdReq;-><init>()V

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g:J

    .line 863
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->getDynamicId(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdReq;)Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;

    move-result-object v0

    .line 864
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    const-string/jumbo v0, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final k()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "needLoopQuery wave_button.isWaveNow()="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "  !wave_button.isTimeOut()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 388
    goto :goto_0

    :cond_1
    move v1, v2

    .line 389
    goto :goto_1
.end method

.method protected m()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->h:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final n()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->o:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alipay/mobile/onsitepay/payer/sound/e;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/e;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/alipay/mobile/onsitepay/payer/sound/k;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/k;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q:[Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    sget v0, Lcom/alipay/mobile/onsitepay/d;->P:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    aput-object v0, v2, v1

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q:[Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    const/4 v3, 0x1

    sget v0, Lcom/alipay/mobile/onsitepay/d;->Q:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q:[Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    const/4 v3, 0x2

    sget v0, Lcom/alipay/mobile/onsitepay/d;->R:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q:[Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l()V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-static {p0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->v:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->requestLBSInfoUpdates(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V

    .line 153
    :cond_1
    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/onsitepay/payer/sound/p;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/p;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;->queryPhoneBlackList(Landroid/content/Context;Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    new-instance v2, Lcom/alipay/mobile/onsitepay/payer/sound/h;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/h;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->setWaveButtonListener(Lcom/alipay/mobile/onsitepay/payer/sound/ag;)V

    .line 209
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/sound/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/i;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 216
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->A()V

    .line 217
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->p()V

    .line 218
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->z()V

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->z:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;

    if-nez v2, :cond_2

    new-instance v2, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->z:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->z:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Landroid/content/BroadcastReceiver;)V

    .line 221
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SErunning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected o()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
        delay = 0x258L
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->p:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/j;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    new-instance v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;-><init>()V

    .line 116
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    .line 117
    const-string/jumbo v1, "10000014"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "10000014Home"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->z()V

    .line 558
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Landroid/content/BroadcastReceiver;)V

    .line 559
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onDestroy()V

    .line 560
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s()V

    .line 535
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r()V

    .line 538
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onPause()V

    .line 539
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onResume()V

    .line 517
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->h()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onStart()V

    .line 258
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s()V

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 548
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onStop()V

    .line 549
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onWindowFocusChanged hasFocus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " checkSkip()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->B()V

    .line 604
    :cond_0
    return-void
.end method

.method protected p()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 249
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q()V

    .line 251
    :cond_0
    return-void
.end method

.method q()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s:Z

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->A()V

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->waveRetry()V

    .line 268
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y()V

    .line 270
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopSendData()V

    .line 476
    :cond_0
    const-string/jumbo v0, "\u8bf7\u62d4\u4e0b\u8033\u673a\u540e\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m()V

    .line 479
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->i()V

    .line 725
    const-string/jumbo v0, "\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string/jumbo v0, "\u8bf7\u62d4\u4e0b\u8033\u673a\u540e\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Ljava/lang/String;)V

    .line 730
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m()V

    .line 731
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->pause()V

    .line 732
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->y:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopSendData()V

    .line 736
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 742
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 743
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q:[Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 745
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->setVisibility(I)V

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->C:Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    .line 748
    return-void
.end method

.method protected u()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 755
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    iget-wide v0, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    iget-wide v0, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 757
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->D:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
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

    .line 759
    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    .line 760
    new-instance v1, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserReq;

    invoke-direct {v1}, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserReq;-><init>()V

    .line 761
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    iput-object v2, v1, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserReq;->location:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    .line 762
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserReq;->dynamicId:Ljava/lang/String;

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    iget-wide v3, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->F:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    iget-wide v3, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->findLbsUser(Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserReq;)Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->C:Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    .line 766
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->C:Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->C:Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    iget-object v0, v0, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;->userList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "findLbsUserRes resultsize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->C:Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    iget-object v1, v1, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
