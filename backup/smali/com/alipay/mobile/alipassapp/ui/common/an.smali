.class public final Lcom/alipay/mobile/alipassapp/ui/common/an;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/alipassapp/ui/common/an;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/framework/app/MicroApplication;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alipay/mobile/alipassapp/ui/common/an;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/an;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/ui/common/an;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/an;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/an;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/common/an;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/common/an;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/common/an;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;-><init>(Landroid/app/Activity;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "u"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "dt"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rt"

    const-string/jumbo v3, "NO"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "st"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "sb"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "sl"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->f:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->g:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5361\u5238webview\u7684AlipassWebviewUtils\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/common/an;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/common/an;->b()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->g:J

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->f:Lcom/alipay/mobile/framework/app/MicroApplication;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "more"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "more"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getParams()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/common/an;->b()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/an;->e:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/ao;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/alipassapp/ui/common/ao;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/an;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    goto :goto_0
.end method
