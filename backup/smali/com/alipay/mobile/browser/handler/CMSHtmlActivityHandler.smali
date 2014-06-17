.class public Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;
.super Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;


# static fields
.field private static b:I


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method protected afterGotoApp(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected beforeFinishActivity(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected beforeGotoApp(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public callBackProccessRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public callBackWhenURLLoding(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->processScheme(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishActivity(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->beforeFinishActivity(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->finishActivity()V

    goto :goto_0
.end method

.method public forceLoginAndLoadUrl(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->forceLoginAndLoadUrl()V

    return-void
.end method

.method public gotoApp(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->beforeGotoApp(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->getmApp()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4, p5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->afterGotoApp(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "gotoApp exception. target=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->finishActivity()V

    goto :goto_0
.end method

.method public processScheme(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz p3, :cond_4

    const-string/jumbo v1, "alipay://"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz p3, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "alipay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "alipays"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "platformapi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "function"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "functionName"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "isSuccess"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "AppsId"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "actionType"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "reLogin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    sget v2, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->b:I

    if-gt v1, v2, :cond_2

    move v0, v7

    :cond_2
    if-nez v0, :cond_5

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\u7cfb\u7edf\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    const-string/jumbo v3, "\u91cd\u8bd5"

    new-instance v4, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$1;-><init>(Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string/jumbo v5, "\u8fd4\u56de"

    new-instance v6, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$2;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler$2;-><init>(Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;Lcom/alipay/mobile/browser/HtmlActivityV2;)V

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/browser/HtmlActivityV2;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    :cond_3
    :goto_1
    return v0

    :cond_4
    const-string/jumbo p3, ""

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->forceLoginAndLoadUrl(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_6
    :goto_2
    move v0, v7

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "experienceMoney"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "YES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_8
    const-string/jumbo v0, "exitWapPage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->finishActivity(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "goto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "actionType"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;->gotoApp(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2
.end method
