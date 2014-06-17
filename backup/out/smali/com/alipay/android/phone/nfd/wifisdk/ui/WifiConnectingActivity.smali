.class public Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "WifiConnectingActivity.java"


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Landroid/view/ViewGroup;

.field protected d:Landroid/view/ViewGroup;

.field protected e:Landroid/widget/Button;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/ImageView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/LinearLayout;

.field protected l:Landroid/view/animation/Animation;

.field protected m:Landroid/view/animation/Animation;

.field protected n:Landroid/view/animation/Animation;

.field protected o:Landroid/view/animation/Animation;

.field protected p:Landroid/view/animation/Animation;

.field protected q:Landroid/view/animation/Animation;

.field private r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

.field private s:Ljava/util/TimerTask;

.field private t:Ljava/util/Timer;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->t:Ljava/util/Timer;

    .line 115
    iput-boolean v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->u:Z

    .line 117
    iput-boolean v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->v:Z

    .line 119
    iput-boolean v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->w:Z

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->x:Landroid/os/Handler;

    .line 422
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->w:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Lcom/alipay/android/phone/nfd/wifisdk/ui/j;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->j()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->v:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->x:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 265
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    return-void
.end method

.method private k()Lcom/alipay/android/phone/nfd/wifisdk/ui/j;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 338
    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    invoke-direct {v1}, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;-><init>()V

    .line 342
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 346
    const-class v2, Lcom/alipay/siteprobe/biz/wifi/rpc/AuthProcessorFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/siteprobe/biz/wifi/rpc/AuthProcessorFacade;

    .line 349
    new-instance v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorReq;

    invoke-direct {v2}, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorReq;-><init>()V

    .line 350
    const-string/jumbo v3, "android"

    iput-object v3, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorReq;->clientType:Ljava/lang/String;

    .line 351
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorReq;->wifiParams:Ljava/lang/String;

    .line 353
    :try_start_0
    invoke-interface {v0, v2}, Lcom/alipay/siteprobe/biz/wifi/rpc/AuthProcessorFacade;->processor(Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorReq;)Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 363
    iget-boolean v3, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;->success:Z

    if-nez v3, :cond_0

    .line 364
    iput-boolean v6, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->a:Z

    .line 365
    iget-object v0, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;->otherAccessUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->b:Ljava/lang/String;

    move-object v0, v1

    .line 406
    :goto_0
    return-object v0

    .line 356
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 358
    iput-boolean v6, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->a:Z

    .line 359
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->b:Ljava/lang/String;

    move-object v0, v1

    .line 360
    goto :goto_0

    .line 370
    :cond_0
    iget-object v3, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;->needUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 372
    :try_start_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;->needUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 373
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 376
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->a:Z

    .line 378
    iget-object v0, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;->otherAccessUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->b:Ljava/lang/String;

    move-object v0, v1

    .line 379
    goto :goto_0

    .line 382
    :cond_1
    new-instance v4, Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyReq;

    invoke-direct {v4}, Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyReq;-><init>()V

    .line 383
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 384
    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyReq;->input:Ljava/lang/String;

    .line 385
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->b:Ljava/lang/String;

    iput-object v3, v4, Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyReq;->wifiParams:Ljava/lang/String;

    .line 386
    invoke-interface {v0, v4}, Lcom/alipay/siteprobe/biz/wifi/rpc/AuthProcessorFacade;->verify(Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyReq;)Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyRsp;

    move-result-object v0

    .line 389
    iget-boolean v0, v0, Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyRsp;->success:Z

    if-nez v0, :cond_2

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->a:Z

    .line 391
    iget-object v0, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;->otherAccessUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 392
    goto :goto_0

    .line 396
    :catch_1
    move-exception v0

    iput-boolean v6, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->a:Z

    .line 397
    iget-object v0, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;->otherAccessUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->b:Ljava/lang/String;

    move-object v0, v1

    .line 398
    goto :goto_0

    .line 403
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->a:Z

    .line 404
    iget-object v0, v2, Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;->gotoUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->c:Ljava/lang/String;

    move-object v0, v1

    .line 406
    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->n:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/a;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->o:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->q:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/c;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->p:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/d;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 177
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "wifiParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "wifiParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/g;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/h;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->i()V

    .line 243
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->c()V

    .line 244
    return-void

    .line 223
    :catch_0
    move-exception v1

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 248
    new-instance v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/e;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->s:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->t:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->s:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 251
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->k()Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    .line 252
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->s:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->s:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 254
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->w:Z

    .line 255
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->v:Z

    if-nez v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->d()V

    .line 258
    :cond_1
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->finish()V

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->u:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    iget-boolean v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->a:Z

    if-eqz v0, :cond_3

    .line 281
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->j()V

    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->f()V

    goto :goto_0
.end method

.method protected final e()V
    .locals 5

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "gotoSuccess:wifiAuthModel.gotoUrl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->finish()V

    .line 323
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 308
    const-string/jumbo v0, "publicId"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    const-string/jumbo v3, "wifisdk_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 312
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "wifisdk_setting_success_public_id"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "wifisdk_setting_success_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 321
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 322
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->finish()V

    goto :goto_0
.end method

.method protected final f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 441
    iput-boolean v2, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->w:Z

    .line 442
    iput-boolean v2, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->u:Z

    .line 443
    iput-boolean v2, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->v:Z

    .line 444
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 447
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->i()V

    .line 448
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->c()V

    .line 449
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 457
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->r:Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 458
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 459
    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->startActivity(Landroid/content/Intent;)V

    .line 460
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->a:Z

    .line 413
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->finish()V

    .line 414
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method
