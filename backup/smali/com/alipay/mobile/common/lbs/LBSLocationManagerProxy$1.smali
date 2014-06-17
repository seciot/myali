.class Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gpsEnable:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iput-object p2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$gpsEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    #getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$002(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    #getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$200()Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$gpsEnable:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->setGpsEnable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    #getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z
    invoke-static {v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$200()Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
