.class public final Lcom/alipay/mobile/discoverywidget/ui/a/d;
.super Lcom/alipay/mobile/discoverywidget/ui/a/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/discoverywidget/ui/a/a;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/d;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/d;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/d;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/d;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/discoverywidget/ui/a/d;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/discoverywidget/ui/a/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/discoverywidget/ui/a/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->c(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/discoverywidget/ui/a/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/f;-><init>(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/discoverywidget/ui/a/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/g;-><init>(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/discoverywidget/ui/a/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/e;-><init>(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/discoverywidget/ui/a/h;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/discoverywidget/ui/a/h;-><init>(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
