.class final Lcom/alipay/mobile/discoverywidget/ui/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

.field final synthetic b:Lcom/alipay/mobile/discoverywidget/ui/a/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/f;->b:Lcom/alipay/mobile/discoverywidget/ui/a/d;

    iput-object p2, p0, Lcom/alipay/mobile/discoverywidget/ui/a/f;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/a/f;->b:Lcom/alipay/mobile/discoverywidget/ui/a/d;

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/f;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->b(Lcom/alipay/mobile/discoverywidget/ui/a/d;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    return-void
.end method
