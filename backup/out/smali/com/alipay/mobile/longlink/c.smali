.class final Lcom/alipay/mobile/longlink/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/longlink/LongLinkServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/c;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/c;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    invoke-static {p2}, Lcom/alipay/mobile/longlink/ILongLinkService$Stub;->a(Landroid/os/IBinder;)Lcom/alipay/mobile/longlink/ILongLinkService;

    move-result-object v1

    #setter for: Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;
    invoke-static {v0, v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$002(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Lcom/alipay/mobile/longlink/ILongLinkService;)Lcom/alipay/mobile/longlink/ILongLinkService;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/c;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    #getter for: Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;
    invoke-static {v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$000(Lcom/alipay/mobile/longlink/LongLinkServiceManager;)Lcom/alipay/mobile/longlink/ILongLinkService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/c;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mIsServiceBound:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$102(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Z)Z

    :cond_0
    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/c;->a:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    const/4 v1, 0x0

    #setter for: Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mIsServiceBound:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$102(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Z)Z

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceDisconnected"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
