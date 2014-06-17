.class public final Lcom/aps/ac;
.super Ljava/lang/Object;


# static fields
.field private static C:Lcom/aps/ah;

.field private static G:I

.field private static v:Lcom/aps/ac;


# instance fields
.field private A:Ljava/util/List;

.field private B:Ljava/util/Timer;

.field private D:Ljava/lang/Thread;

.field private E:Ljava/lang/Thread;

.field private F:Landroid/os/Looper;

.field private a:Landroid/content/Context;

.field private b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/location/LocationManager;

.field private d:Landroid/net/wifi/WifiManager;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:J

.field private u:Z

.field private w:Lcom/aps/af;

.field private x:Lcom/aps/ag;

.field private y:Landroid/telephony/CellLocation;

.field private z:Lcom/aps/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/aps/ac;->v:Lcom/aps/ac;

    sput-object v0, Lcom/aps/ac;->C:Lcom/aps/ah;

    const/16 v0, 0x2710

    sput v0, Lcom/aps/ac;->G:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    iput-object v5, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    iput-object v5, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/ac;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/ac;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/ac;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/aps/ac;->h:Z

    iput v1, p0, Lcom/aps/ac;->i:I

    iput-boolean v1, p0, Lcom/aps/ac;->j:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/aps/ac;->k:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/ac;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    iput v1, p0, Lcom/aps/ac;->n:I

    iput v1, p0, Lcom/aps/ac;->o:I

    iput v1, p0, Lcom/aps/ac;->p:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/ac;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/ac;->r:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/aps/ac;->s:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/aps/ac;->t:J

    iput-boolean v2, p0, Lcom/aps/ac;->u:Z

    iput-object v5, p0, Lcom/aps/ac;->w:Lcom/aps/af;

    iput-object v5, p0, Lcom/aps/ac;->x:Lcom/aps/ag;

    iput-object v5, p0, Lcom/aps/ac;->y:Landroid/telephony/CellLocation;

    iput-object v5, p0, Lcom/aps/ac;->z:Lcom/aps/ai;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/ac;->A:Ljava/util/List;

    iput-object v5, p0, Lcom/aps/ac;->B:Ljava/util/Timer;

    iput-object v5, p0, Lcom/aps/ac;->D:Ljava/lang/Thread;

    iput-object v5, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    iput-object v5, p0, Lcom/aps/ac;->F:Landroid/os/Looper;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/aps/ac;->e:Ljava/lang/String;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    const-string/jumbo v3, ":"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aget-byte v0, v0, v1

    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aget-byte v0, v0, v1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_3

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_5

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/aps/ac;->n:I

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v7, :cond_6

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/aps/ac;->o:I

    :cond_3
    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/aps/ac;->p:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/aps/ac;->h:Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method static synthetic A()Lcom/aps/ah;
    .locals 1

    sget-object v0, Lcom/aps/ac;->C:Lcom/aps/ah;

    return-object v0
.end method

.method static synthetic a(Lcom/aps/ac;I)I
    .locals 0

    iput p1, p0, Lcom/aps/ac;->n:I

    return p1
.end method

.method static synthetic a(Lcom/aps/ac;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/ac;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aps/ac;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->F:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/ac;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->y:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method protected static a(Landroid/content/Context;)Lcom/aps/ac;
    .locals 3

    sget-object v0, Lcom/aps/ac;->v:Lcom/aps/ac;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/aps/ac;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "passive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/aps/ac;

    invoke-direct {v0, p0}, Lcom/aps/ac;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aps/ac;->v:Lcom/aps/ac;

    :cond_2
    sget-object v0, Lcom/aps/ac;->v:Lcom/aps/ac;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/ac;)Lcom/aps/af;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->w:Lcom/aps/af;

    return-object v0
.end method

.method static synthetic a(Lcom/aps/ac;Lcom/aps/af;)Lcom/aps/af;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->w:Lcom/aps/af;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/ac;Lcom/aps/ag;)Lcom/aps/ag;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->x:Lcom/aps/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/ac;Lcom/aps/ai;)Lcom/aps/ai;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->z:Lcom/aps/ai;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/ac;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/ac;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->D:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/ac;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->B:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/ac;Landroid/content/BroadcastReceiver;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/ac;Landroid/location/GpsStatus$NmeaListener;JF)V
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/ac;Landroid/telephony/PhoneStateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x111

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aps/ac;Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v4, "*"

    const-string/jumbo v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_2
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/ac;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/ac;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/aps/ac;I)I
    .locals 0

    iput p1, p0, Lcom/aps/ac;->o:I

    return p1
.end method

.method static synthetic b(Lcom/aps/ac;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/ac;->t:J

    return-wide p1
.end method

.method static synthetic b(Lcom/aps/ac;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/aps/ac;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aps/ac;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->D:Ljava/lang/Thread;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v0, v1

    :goto_0
    sget-object v3, Lcom/aps/av;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/aps/av;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/aps/av;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/aps/ac;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aps/ac;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/aps/ac;I)I
    .locals 0

    iput p1, p0, Lcom/aps/ac;->i:I

    return p1
.end method

.method static synthetic c(Lcom/aps/ac;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/ac;->k:J

    return-wide p1
.end method

.method static synthetic c(Lcom/aps/ac;)Lcom/aps/ag;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->x:Lcom/aps/ag;

    return-object v0
.end method

.method static synthetic d(Lcom/aps/ac;)Lcom/aps/ai;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->z:Lcom/aps/ai;

    return-object v0
.end method

.method static synthetic e(Lcom/aps/ac;)V
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/aps/ac;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic g(Lcom/aps/ac;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->B:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic h(Lcom/aps/ac;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->A:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/aps/ac;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic j(Lcom/aps/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aps/ac;->h:Z

    return v0
.end method

.method static synthetic k(Lcom/aps/ac;)I
    .locals 1

    iget v0, p0, Lcom/aps/ac;->i:I

    return v0
.end method

.method static synthetic l(Lcom/aps/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aps/ac;->u:Z

    return v0
.end method

.method static synthetic z()I
    .locals 1

    sget v0, Lcom/aps/ac;->G:I

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/aps/ac;->w:Lcom/aps/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ac;->w:Lcom/aps/af;

    iget-object v1, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iput-object v2, p0, Lcom/aps/ac;->w:Lcom/aps/af;

    :cond_1
    iget-object v0, p0, Lcom/aps/ac;->D:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/aps/ac;->u:Z

    iget-object v0, p0, Lcom/aps/ac;->D:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/aps/ac;->D:Ljava/lang/Thread;

    :cond_2
    iget-object v0, p0, Lcom/aps/ac;->x:Lcom/aps/ag;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/ac;->x:Lcom/aps/ag;

    iget-object v1, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_3

    if-nez v0, :cond_a

    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/aps/ac;->x:Lcom/aps/ag;

    :cond_4
    iget-object v0, p0, Lcom/aps/ac;->z:Lcom/aps/ai;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aps/ac;->z:Lcom/aps/ai;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    if-nez v1, :cond_b

    :cond_5
    :goto_1
    iput-object v2, p0, Lcom/aps/ac;->z:Lcom/aps/ai;

    :cond_6
    iget-object v0, p0, Lcom/aps/ac;->B:Ljava/util/Timer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aps/ac;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/aps/ac;->B:Ljava/util/Timer;

    :cond_7
    iget-object v0, p0, Lcom/aps/ac;->F:Landroid/os/Looper;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/aps/ac;->F:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/aps/ac;->F:Landroid/os/Looper;

    :cond_8
    iget-object v0, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    :cond_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method protected final a(Lcom/aps/ah;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    sput-object v2, Lcom/aps/ac;->C:Lcom/aps/ah;

    invoke-virtual {p0}, Lcom/aps/ac;->a()V

    iget-object v1, p0, Lcom/aps/ac;->F:Landroid/os/Looper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ac;->F:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/aps/ac;->F:Landroid/os/Looper;

    :cond_0
    iget-object v1, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    :cond_1
    new-instance v1, Lcom/aps/ad;

    invoke-direct {v1, p0, v0}, Lcom/aps/ad;-><init>(Lcom/aps/ac;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/aps/ac;->E:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final b()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/aps/ac;->j:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aps/ac;->t:J

    iput-object v1, p0, Lcom/aps/ac;->y:Landroid/telephony/CellLocation;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()Z
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Z
    .locals 2

    iget-object v0, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/aps/ac;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aps/ac;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ac;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aps/ac;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aps/ac;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ac;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aps/ac;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aps/ac;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ac;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aps/ac;->h:Z

    return v0
.end method

.method protected final i()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/aps/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lcom/aps/ac;->t:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/ac;->y:Landroid/telephony/CellLocation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected final j()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/aps/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lcom/aps/ac;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/ac;->A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected final k()B
    .locals 1

    invoke-virtual {p0}, Lcom/aps/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aps/ac;->i:I

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x80

    goto :goto_0
.end method

.method protected final l()Ljava/util/List;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/aps/ac;->b()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/aps/ac;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    const/16 v4, 0xf

    if-gt v1, v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method protected final m()Ljava/util/List;
    .locals 9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, -0x1

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/aps/ac;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v1, p0, Lcom/aps/ac;->k:J

    iget-object v0, p0, Lcom/aps/ac;->l:Ljava/lang/String;

    move-object v6, v0

    move-wide v7, v1

    move-wide v0, v7

    move-object v2, v6

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_1
    move-object v6, v0

    move-wide v7, v1

    move-wide v0, v7

    move-object v2, v6

    goto :goto_0
.end method

.method protected final n()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ac;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected final o()I
    .locals 1

    iget v0, p0, Lcom/aps/ac;->n:I

    return v0
.end method

.method protected final p()I
    .locals 1

    iget v0, p0, Lcom/aps/ac;->o:I

    return v0
.end method

.method protected final q()I
    .locals 1

    iget v0, p0, Lcom/aps/ac;->p:I

    return v0
.end method

.method protected final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aps/ac;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ac;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ac;->q:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aps/ac;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ac;->q:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected final s()B
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/aps/ac;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gt v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-byte v0, v0

    return v0
.end method

.method protected final t()I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/aps/ac;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    float-to-int v0, v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected final u()S
    .locals 5

    const/16 v4, 0x10

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/aps/ac;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ac;->r:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "$GPGSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/high16 v0, 0x42c8

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    :cond_0
    return v0
.end method

.method protected final v()Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/aps/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ac;->c:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v5

    float-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected final w()Ljava/util/List;
    .locals 3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/aps/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aps/ac;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v2
.end method

.method protected final x()Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/aps/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aps/ac;->i()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method protected final y()Ljava/util/List;
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/aps/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aps/ac;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x28

    if-ge v4, v5, :cond_1

    if-eqz v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-object v3
.end method
