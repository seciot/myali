.class public Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;
.super Ljava/lang/Object;
.source "PublicHomeWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;
.implements Ljava/util/Observer;


# static fields
.field public static publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;


# instance fields
.field private a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;

.field private f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

.field private h:Ljava/util/Timer;

.field private i:J

.field private j:Landroid/os/Handler;

.field private k:Lcom/alipay/mobile/publicsvc/home/proguard/b/b;

.field private l:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private m:Lcom/alipay/android/phone/publicplatform/home/g;

.field private n:Z

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field publicHomeManager:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

.field private q:Ljava/lang/Boolean;

.field private r:Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v3, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    .line 100
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->i:J

    .line 113
    iput-boolean v2, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->n:Z

    .line 293
    iput-object v3, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->q:Ljava/lang/Boolean;

    .line 589
    new-instance v0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->r:Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;

    .line 117
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

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->l:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->j:Landroid/os/Handler;

    .line 122
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->h:Ljava/util/Timer;

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->h:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/android/phone/publicplatform/home/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/publicplatform/home/a;-><init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V

    iget-wide v2, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->i:J

    iget-wide v4, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->i:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 138
    invoke-static {}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->a()Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeManager:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeManager:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->b()V

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeManager:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->addObserver(Ljava/util/Observer;)V

    .line 142
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;->instance()Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/home/proguard/b/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/publicsvc/home/proguard/b/b;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->k:Lcom/alipay/mobile/publicsvc/home/proguard/b/b;

    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->k:Lcom/alipay/mobile/publicsvc/home/proguard/b/b;

    iget-object v2, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeManager:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/publicsvc/home/proguard/b/b;->a(Lcom/alipay/mobile/publicsvc/home/proguard/h/a;)V

    const-string/jumbo v1, "ppmain_subscriber"

    iget-object v2, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->k:Lcom/alipay/mobile/publicsvc/home/proguard/b/b;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;->setSubscribMsg(Ljava/lang/String;Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyCallBack;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeManager:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    new-instance v1, Lcom/alipay/android/phone/publicplatform/home/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/publicplatform/home/b;-><init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->setOnPublicHomeListQueryFinishListener(Lcom/alipay/android/phone/publicplatform/main/listener/OnPublicHomeListQueryFinishListener;)V

    .line 144
    new-instance v0, Lcom/alipay/android/phone/publicplatform/home/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/publicplatform/home/g;-><init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->m:Lcom/alipay/android/phone/publicplatform/home/g;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->m:Lcom/alipay/android/phone/publicplatform/home/g;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 145
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 362
    const-string/jumbo v0, ""

    .line 363
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_1

    .line 367
    :cond_1
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_2
    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 350
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "publicHomeTabPointLastShowStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->q:Ljava/lang/Boolean;

    .line 354
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/publicsvc/home/proguard/b/b;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->k:Lcom/alipay/mobile/publicsvc/home/proguard/b/b;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->o:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v4, "publicHomeTabLastPointIds"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->p:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->p:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    if-eqz v0, :cond_2

    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-le v7, v1, :cond_2

    iget-object v7, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->o:Ljava/util/Map;

    aget-object v8, v0, v2

    aget-object v0, v0, v1

    const-string/jumbo v9, "1"

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;

    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->getType()I

    move-result v6

    if-ne v6, v1, :cond_5

    iget-object v6, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->o:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->o:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->n:Z

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move v2, v3

    :cond_9
    invoke-static {v4}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v1

    const-string/jumbo v3, "publicHomeTabLastPointIds"

    invoke-virtual {v1, v3, v0}, Lcom/alipay/mobile/common/utils/CacheSet;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->p:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v2, v0, :cond_b

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "publicHomeTabPointLastShowStatus"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->q:Ljava/lang/Boolean;

    :cond_b
    return v2
.end method

.method static synthetic access$202(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->n:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->q:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    return-object v0
.end method

.method public static clearPublicHomeViewHolder()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    .line 174
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    .line 179
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->m:Lcom/alipay/android/phone/publicplatform/home/g;

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->m:Lcom/alipay/android/phone/publicplatform/home/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    :cond_0
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/home/proguard/j/f;->d:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 204
    sget v1, Lcom/alipay/mobile/publicsvc/home/proguard/j/e;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    iput-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    .line 208
    invoke-static {}, Landroid/util/SmartBarUtils;->hasSmartBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 210
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 211
    const-string/jumbo v3, "Meizu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "M040"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    invoke-virtual {v1}, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 214
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v5, v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    :cond_0
    sget v1, Lcom/alipay/mobile/publicsvc/home/proguard/j/e;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 219
    iget-object v2, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/publicsvc/home/proguard/j/d;->k:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    iget-object v3, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->b:Landroid/app/Activity;

    sget v4, Lcom/alipay/mobile/publicsvc/home/proguard/j/g;->a:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v2, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    new-instance v3, Lcom/alipay/android/phone/publicplatform/home/c;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/publicplatform/home/c;-><init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->setPublicTabWidgetMsgFlagCallback(Lcom/alipay/android/phone/publicplatform/widget/a;)V

    .line 265
    iget-object v2, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    invoke-virtual {v2}, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->reset()V

    .line 268
    new-instance v2, Lcom/alipay/android/phone/publicplatform/home/d;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/publicplatform/home/d;-><init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->e:Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;

    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/home/proguard/j/f;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->e:Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->e:Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;

    sget v1, Lcom/alipay/mobile/publicsvc/home/proguard/j/e;->o:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/home/proguard/j/f;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeManager:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->setPublicHomeManager(Lcom/alipay/mobile/publicsvc/home/proguard/h/a;)V

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->afterView()V

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->e:Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;

    sget v1, Lcom/alipay/mobile/publicsvc/home/proguard/j/e;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    sput-object v0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeViewHolder:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->k:Lcom/alipay/mobile/publicsvc/home/proguard/b/b;

    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/publicsvc/home/proguard/b/b;->a(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/phone/publicplatform/home/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/publicplatform/home/e;-><init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->e:Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;

    new-instance v1, Lcom/alipay/android/phone/publicplatform/home/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/publicplatform/home/f;-><init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;->setOnInterceptTouchListener(Lcom/alipay/android/phone/publicplatform/home/widget/a;)V

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->e:Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 575
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->operateMenuVisiable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->hideOperateMenu()V

    .line 578
    const/4 v0, 0x1

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method public onReturn()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public setActApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 587
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->b:Landroid/app/Activity;

    .line 566
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->d:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 594
    instance-of v0, p1, Lcom/alipay/android/phone/publicplatform/main/api/MsgCountUpdateObservable;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->g:Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/widget/PublicTabWidgetMsgFlag;->reset()V

    .line 599
    :cond_0
    return-void
.end method
