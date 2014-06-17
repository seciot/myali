.class final Lcom/alipay/mobile/alipassapp/ui/common/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/extenal/ICallInfo;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;Lcom/alipay/mobile/h5container/extenal/ICallInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/j;->b:Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/j;->a:Lcom/alipay/mobile/h5container/extenal/ICallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4f4d\u7f6e\u4fe1\u606flocation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/e;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/model/e;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/e;->a(D)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/e;->b(D)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4f4d\u7f6e\u4fe1\u606fpositionObj="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/j;->a:Lcom/alipay/mobile/h5container/extenal/ICallInfo;

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/extenal/ICallInfo;->callBack(Lcom/alibaba/fastjson/JSONObject;)V

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/j;->b:Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;->a(Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    goto :goto_0
.end method
