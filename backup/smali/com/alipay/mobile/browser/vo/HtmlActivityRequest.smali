.class public Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CMS_HANDLER:I = 0x1

.field public static final DEFAULT_HANDLER:I = 0x0

.field private static final serialVersionUID:J = -0x66075fc98dd74acdL


# instance fields
.field private cookieDomain:Ljava/lang/String;

.field private cookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handlerType:I

.field private isNeedLogin:Z

.field private requestUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->handlerType:I

    return-void
.end method


# virtual methods
.method public getCookieDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->cookieDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->cookieMap:Ljava/util/Map;

    return-object v0
.end method

.method public getHandlerType()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->handlerType:I

    return v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCmsHandlerType()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->handlerType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->isNeedLogin:Z

    return v0
.end method

.method public setCookieDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->cookieDomain:Ljava/lang/String;

    return-void
.end method

.method public setCookieMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->cookieMap:Ljava/util/Map;

    return-void
.end method

.method public setHandlerType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->handlerType:I

    return-void
.end method

.method public setNeedLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->isNeedLogin:Z

    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->title:Ljava/lang/String;

    return-void
.end method
