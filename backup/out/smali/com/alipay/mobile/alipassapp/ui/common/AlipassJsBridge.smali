.class public Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getGPS(Lcom/alipay/mobile/h5container/extenal/ICallInfo;)V
    .locals 3
    .annotation runtime Lcom/alipay/mobile/h5container/extenal/Func;
        value = "getGPS"
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;->a:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/j;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/j;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassJsBridge;Lcom/alipay/mobile/h5container/extenal/ICallInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    goto :goto_0
.end method

.method public openMcardFail(Lcom/alipay/mobile/h5container/extenal/ICallInfo;)V
    .locals 1
    .annotation runtime Lcom/alipay/mobile/h5container/extenal/Func;
        value = "openMcardFail"
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b:Z

    return-void
.end method

.method public openMcardSuccess(Lcom/alipay/mobile/h5container/extenal/ICallInfo;)V
    .locals 1
    .annotation runtime Lcom/alipay/mobile/h5container/extenal/Func;
        value = "openMcardSuccess"
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b:Z

    sput-boolean v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a:Z

    return-void
.end method

.method public refreshMcard(Lcom/alipay/mobile/h5container/extenal/ICallInfo;)V
    .locals 1
    .annotation runtime Lcom/alipay/mobile/h5container/extenal/Func;
        value = "refreshMcard"
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a:Z

    sput-boolean v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c:Z

    return-void
.end method
