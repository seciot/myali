.class final Lcom/alipay/mobile/alipassnfcapp/ui/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/a;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/a;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->passId:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->access$000(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/a;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->access$100(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;->startPayBridge(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/a;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->getRootController()Lcom/alipay/mobile/alipassnfcapp/ui/RootController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/a;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;

    #calls: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->send(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->access$200(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;Ljava/lang/String;)V

    return-void
.end method
