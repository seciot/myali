.class final Lcom/alipay/mobile/alipassapp/ui/common/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

.field b:Lcom/alipay/mobile/alipassapp/ui/common/a;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;)V
    .locals 7

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/a;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$900(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "app"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp$MessageApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp$MessageApp;->getAndroid_appid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp$MessageApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp$MessageApp;->getAndroid_launch()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp$MessageApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp$MessageApp;->getAndroid_download()Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;
    invoke-static {p1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$1100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->b:Lcom/alipay/mobile/alipassapp/ui/common/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$1100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$1100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "t"

    const-string/jumbo v2, "b"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000021"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "travelItineraryDetails"

    const-string/jumbo v5, "seeMore"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ac;->b:Lcom/alipay/mobile/alipassapp/ui/common/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/a;->onClick(Landroid/view/View;)V

    return-void
.end method
