.class final Lcom/alipay/mobile/alipassapp/ui/common/u;
.super Lcom/alipay/mobile/alipassapp/ui/common/au;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/t;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/t;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/u;->a:Lcom/alipay/mobile/alipassapp/ui/common/t;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/au;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/u;->a:Lcom/alipay/mobile/alipassapp/ui/common/t;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/t;->b:Lcom/alipay/mobile/alipassapp/ui/common/s;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/s;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/u;->a:Lcom/alipay/mobile/alipassapp/ui/common/t;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/t;->b:Lcom/alipay/mobile/alipassapp/ui/common/s;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/s;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$600(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v2

    const-string/jumbo v3, "barcode"

    #calls: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->addOperationLog(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$700(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V

    return-void
.end method
