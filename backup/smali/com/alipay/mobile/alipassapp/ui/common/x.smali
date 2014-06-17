.class final Lcom/alipay/mobile/alipassapp/ui/common/x;
.super Lcom/alipay/mobile/alipassapp/ui/common/au;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/w;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/w;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/x;->a:Lcom/alipay/mobile/alipassapp/ui/common/w;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/au;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/x;->a:Lcom/alipay/mobile/alipassapp/ui/common/w;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/w;->b:Lcom/alipay/mobile/alipassapp/ui/common/v;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/v;->d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/x;->a:Lcom/alipay/mobile/alipassapp/ui/common/w;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/w;->b:Lcom/alipay/mobile/alipassapp/ui/common/v;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/v;->d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$600(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v2

    const-string/jumbo v3, "qrcode"

    #calls: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->addOperationLog(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$700(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V

    return-void
.end method
