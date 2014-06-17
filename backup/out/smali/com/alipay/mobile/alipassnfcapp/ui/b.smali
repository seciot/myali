.class final Lcom/alipay/mobile/alipassnfcapp/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/b;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/b;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->access$300(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getDynamicCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/b;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;->access$400(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendDynmicSoundViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
