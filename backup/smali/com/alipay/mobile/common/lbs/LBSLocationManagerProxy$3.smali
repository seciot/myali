.class Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iput-object p2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    #getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/alipay/mobile/common/lbs/LBSLocationListener;
    invoke-static {v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$300(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    return-void
.end method
