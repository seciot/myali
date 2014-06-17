.class final Lcom/alipay/mobile/about/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/AboutMainActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/AboutMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/j;->a:Lcom/alipay/mobile/about/ui/AboutMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/j;->a:Lcom/alipay/mobile/about/ui/AboutMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->c()V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/j;->a:Lcom/alipay/mobile/about/ui/AboutMainActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/j;->a:Lcom/alipay/mobile/about/ui/AboutMainActivity;

    invoke-static {v2}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->d(Lcom/alipay/mobile/about/ui/AboutMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "aboutIndex"

    const-string/jumbo v5, "releaseNotes"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
