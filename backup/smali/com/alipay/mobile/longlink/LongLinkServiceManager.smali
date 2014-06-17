.class public final Lcom/alipay/mobile/longlink/LongLinkServiceManager;
.super Ljava/lang/Object;


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static instance:Lcom/alipay/mobile/longlink/LongLinkServiceManager;


# instance fields
.field private mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private mComPktHanlder:Lcom/alipay/mobile/longlink/PacketHanlder;

.field private mContext:Landroid/content/Context;

.field private mIsServiceBound:Z

.field private mPacketNotifer:Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;

.field private mService:Lcom/alipay/mobile/longlink/ILongLinkService;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/longlink/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/c;-><init>(Lcom/alipay/mobile/longlink/LongLinkServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alipay/mobile/longlink/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/d;-><init>(Lcom/alipay/mobile/longlink/LongLinkServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mPacketNotifer:Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;

    iput-object p1, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/longlink/LongLinkServiceManager;)Lcom/alipay/mobile/longlink/ILongLinkService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Lcom/alipay/mobile/longlink/ILongLinkService;)Lcom/alipay/mobile/longlink/ILongLinkService;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mIsServiceBound:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Lorg/json/JSONObject;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->onAppHanlder(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/longlink/LongLinkServiceManager;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->onCommonHanlder(Lorg/json/JSONObject;)V

    return-void
.end method

.method private clearAppHanlderMap()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "clearAppHanlderMap is done."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;
    .locals 2

    const-class v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->instance:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->instance:Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->instance:Lcom/alipay/mobile/longlink/LongLinkServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onAppHanlder(Lorg/json/JSONObject;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onAppHanlder appId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v0, v5}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/longlink/PacketHanlder;

    if-eqz v0, :cond_0

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/longlink/PacketHanlder;->processPacket(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "onAppHanlder processPacket done. "

    invoke-static {v7, v0, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAppHanlder is done. ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private onCommonHanlder(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v5, 0x3

    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "payload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCommonHanlder appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mComPktHanlder:Lcom/alipay/mobile/longlink/PacketHanlder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mComPktHanlder:Lcom/alipay/mobile/longlink/PacketHanlder;

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/longlink/PacketHanlder;->processPacket(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "mComPktHanlder processPacket done. "

    invoke-static {v5, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPacketListener(Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/longlink/ILongLinkService;->a(Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final bindService(Lcom/alipay/mobile/longlink/PacketHanlder;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->registerCommonFunc(Lcom/alipay/mobile/longlink/PacketHanlder;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "LongLinkServiceManager bindService done."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "LongLinkServiceManager mService is null."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-interface {v1}, Lcom/alipay/mobile/longlink/ILongLinkService;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isConnected ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final registerAppAppHanlder(Ljava/lang/String;Lcom/alipay/mobile/longlink/PacketHanlder;)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerAppAppHanlder the size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAppAppHanlder is done."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerAppAppHanlder params are invalid. AppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "registerAppAppHanlder mAppPktHanlderMap is null."

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final registerCommonFunc(Lcom/alipay/mobile/longlink/PacketHanlder;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mComPktHanlder:Lcom/alipay/mobile/longlink/PacketHanlder;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mPacketNotifer:Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->setPacketListener(Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "registerCommonFunc set packetHandler done."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacketUplink is called. appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", appData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "payload"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/longlink/ILongLinkService;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "sendPacketUplink get bizData failed."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPacketUplink failed."

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAppUserInfo is called. userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", loginTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/longlink/ILongLinkService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/alipay/mobile/longlink/c/a;->a:Z

    invoke-static {}, Lcom/alipay/mobile/longlink/c/a;->a()V

    return-void
.end method

.method public final setLinkAddr(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLinkAddr is called. host="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sslFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/longlink/ILongLinkService;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final startLink()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "startLink will be called."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/longlink/ILongLinkService;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "LongLink is still working..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/longlink/ILongLinkService;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final stopLink()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "stopLink will be called."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/longlink/ILongLinkService;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final unBindService()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/longlink/ILongLinkService;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->clearAppHanlderMap()V

    iput-object v4, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mComPktHanlder:Lcom/alipay/mobile/longlink/PacketHanlder;

    iget-boolean v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mIsServiceBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mIsServiceBound:Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iput-object v4, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mService:Lcom/alipay/mobile/longlink/ILongLinkService;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final unRegisterAppAppHanlder(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unRegisterAppAppHanlder Enter... AppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mAppPktHanlderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterAppAppHanlder is done."

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterAppAppHanlder AppId is not exist."

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unRegisterAppAppHanlder params are invalid. AppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final unRegisterCommonFunc()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->mComPktHanlder:Lcom/alipay/mobile/longlink/PacketHanlder;

    return-void
.end method
