.class public Lcom/alipay/mobile/discoverywidget/ui/a/a;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# static fields
.field private static l:Z


# instance fields
.field public a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/discoverywidget/a/c;

.field private g:Lcom/alipay/mobile/discoverywidget/a/b;

.field private h:Lcom/alipay/mobile/discoverywidget/a/d;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/discoverywidget/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->g:Lcom/alipay/mobile/discoverywidget/a/b;

    const-string/jumbo v0, "_DiscoveryWidgetHomeData"

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->k:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->j:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    new-instance v0, Lcom/alipay/mobile/discoverywidget/a/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/discoverywidget/a/a/a;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->g:Lcom/alipay/mobile/discoverywidget/a/b;

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0
.end method

.method private b()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/discoverywidget/a/a;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->j:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iget-object v2, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lcom/alipay/mobile/discoverywidget/ui/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/discoverywidget/ui/a/c;-><init>(Lcom/alipay/mobile/discoverywidget/ui/a/a;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v2, v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-class v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V
    .locals 3

    const-class v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->f:Lcom/alipay/mobile/discoverywidget/a/c;

    invoke-interface {v1}, Lcom/alipay/mobile/discoverywidget/a/c;->initDiscoveryLayout()V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->f:Lcom/alipay/mobile/discoverywidget/a/c;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/discoverywidget/a/c;->discoveryNotify(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverywidget/a/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverywidget/a/a;->a()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 13
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->success:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->f:Lcom/alipay/mobile/discoverywidget/a/c;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/discoverywidget/a/c;->discoveryNotify(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->h:Lcom/alipay/mobile/discoverywidget/a/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverywidget/a/d;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverywidget/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/discoverywidget/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/discoverywidget/a/a;-><init>()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/discoverywidget/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->redMark:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->tabRedMarkTip:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "new"

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->tabRedMarkTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlagNew()V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->i:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the cacheData put is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->j:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x98967f

    const-string/jumbo v10, "text"

    move-object v5, v4

    invoke-virtual/range {v0 .. v10}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->put2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[BJJLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-class v2, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Discovery-handleGetDiscoveryInfo\u8017\u65f6\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v11

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "\u63d0\u9192"

    iget-object v2, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->resultView:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->c:Landroid/content/Context;

    sget v4, Lcom/alipay/mobile/discoverywidget/e;->a:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/discoverywidget/ui/a/b;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/discoverywidget/ui/a/b;-><init>(Lcom/alipay/mobile/discoverywidget/ui/a/a;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "hui"

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->tabRedMarkTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const-string/jumbo v1, "\u60e0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const-string/jumbo v1, "num"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->tabRedMarkTip:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public final a(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/discoverywidget/a/d;->a()Lcom/alipay/mobile/discoverywidget/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->h:Lcom/alipay/mobile/discoverywidget/a/d;

    invoke-direct {p0}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a()V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/discoverywidget/a/c;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->f:Lcom/alipay/mobile/discoverywidget/a/c;

    invoke-static {}, Lcom/alipay/mobile/discoverywidget/a/d;->a()Lcom/alipay/mobile/discoverywidget/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->h:Lcom/alipay/mobile/discoverywidget/a/d;

    invoke-direct {p0}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a()V

    return-void
.end method

.method protected b(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-boolean v0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->l:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->g:Lcom/alipay/mobile/discoverywidget/a/b;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/discoverywidget/a/b;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-class v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Discovery-rpcGetDiscoveryInfo \u8017\u65f6(ms)\uff1a"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    const-class v2, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Discovery-processRequest \u8017\u65f6(ms)\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean v7, Lcom/alipay/mobile/discoverywidget/ui/a/a;->l:Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-class v3, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RPC\u5f02\u5e38"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-boolean v7, Lcom/alipay/mobile/discoverywidget/ui/a/a;->l:Z

    throw v0
.end method

.method protected b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const-class v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->redMark:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->tabRedMarkTip:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "new"

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->tabRedMarkTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlagNew()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "hui"

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->tabRedMarkTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const-string/jumbo v1, "\u60e0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const-string/jumbo v1, "num"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->tabRedMarkTip:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/a;->g:Lcom/alipay/mobile/discoverywidget/a/b;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/discoverywidget/a/b;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->success:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RPC\u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
