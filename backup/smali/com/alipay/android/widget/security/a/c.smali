.class public final Lcom/alipay/android/widget/security/a/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private c:Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SecurityWidgetFacadeIml"

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/c;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/c;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/c;->c:Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/c;->c:Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    invoke-interface {v0, p1}, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;->getQuickHelp(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;

    move-result-object v0

    return-object v0
.end method
