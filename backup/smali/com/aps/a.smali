.class public Lcom/aps/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aps/i;


# static fields
.field private static a:Lcom/aps/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/aps/s;

.field private C:Lcom/aps/y;

.field private D:J

.field private E:J

.field private F:Landroid/telephony/CellLocation;

.field private G:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/net/ConnectivityManager;

.field private e:Landroid/net/wifi/WifiManager;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aps/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Lcom/aps/b;

.field private k:Landroid/telephony/PhoneStateListener;

.field private l:I

.field private m:Lcom/aps/a$a;

.field private n:Landroid/net/wifi/WifiInfo;

.field private o:Lorg/json/JSONObject;

.field private p:Ljava/lang/String;

.field private q:Lcom/aps/c;

.field private r:J

.field private s:J

.field private t:Z

.field private u:Z

.field private v:J

.field private w:J

.field private x:J

.field private y:Lcom/aps/j;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/aps/a;->a:Lcom/aps/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/aps/a;->b:Landroid/content/Context;

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->c:I

    iput-object v1, p0, Lcom/aps/a;->d:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/aps/a;->e:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    new-instance v0, Lcom/aps/b;

    invoke-direct {v0}, Lcom/aps/b;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->j:Lcom/aps/b;

    iput-object v1, p0, Lcom/aps/a;->k:Landroid/telephony/PhoneStateListener;

    const/16 v0, -0x71

    iput v0, p0, Lcom/aps/a;->l:I

    new-instance v0, Lcom/aps/a$a;

    invoke-direct {v0, p0, v1}, Lcom/aps/a$a;-><init>(Lcom/aps/a;Lcom/aps/a$1;)V

    iput-object v0, p0, Lcom/aps/a;->m:Lcom/aps/a$a;

    iput-object v1, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/aps/a;->o:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/aps/a;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/aps/a;->q:Lcom/aps/c;

    iput-wide v2, p0, Lcom/aps/a;->r:J

    iput-wide v2, p0, Lcom/aps/a;->s:J

    iput-boolean v4, p0, Lcom/aps/a;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/a;->u:Z

    iput-wide v2, p0, Lcom/aps/a;->v:J

    iput-wide v2, p0, Lcom/aps/a;->w:J

    iput-wide v2, p0, Lcom/aps/a;->x:J

    invoke-static {}, Lcom/aps/j;->a()Lcom/aps/j;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->y:Lcom/aps/j;

    iput v4, p0, Lcom/aps/a;->z:I

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/a;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/aps/a;->B:Lcom/aps/s;

    iput-object v1, p0, Lcom/aps/a;->C:Lcom/aps/y;

    iput-wide v2, p0, Lcom/aps/a;->D:J

    iput-wide v2, p0, Lcom/aps/a;->E:J

    iput-object v1, p0, Lcom/aps/a;->F:Landroid/telephony/CellLocation;

    iput-boolean v4, p0, Lcom/aps/a;->G:Z

    return-void
.end method

.method static synthetic a(Lcom/aps/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/a;->v:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aps/a;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/aps/a;->F:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/aps/n;->b()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    iget-object v2, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/n;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/aps/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lcom/aps/e;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Lcom/aps/n;->a(I)I

    move-result v2

    iput v2, v1, Lcom/aps/e;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static declared-synchronized a()Lcom/aps/i;
    .locals 2

    const-class v1, Lcom/aps/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aps/a;->a:Lcom/aps/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aps/a;

    invoke-direct {v0}, Lcom/aps/a;-><init>()V

    sput-object v0, Lcom/aps/a;->a:Lcom/aps/a;

    :cond_0
    sget-object v0, Lcom/aps/a;->a:Lcom/aps/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/aps/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/aps/a;->h:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 7

    const/16 v6, 0x9

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ne v1, v5, :cond_1

    iput v6, p0, Lcom/aps/a;->c:I

    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "gsm illegal"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/aps/n;->a([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v5, :cond_2

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    const v1, 0xfffffff

    if-ne v0, v1, :cond_3

    :cond_2
    iput v6, p0, Lcom/aps/a;->c:I

    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "gsm illegal"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/aps/n;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/aps/a;->c:I

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    iget-object v2, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/n;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/aps/e;->a:Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, v1, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->d:I

    iget v2, p0, Lcom/aps/a;->l:I

    iput v2, v1, Lcom/aps/e;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eq v2, v5, :cond_4

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/aps/a;I)V
    .locals 2

    const/16 v0, -0x71

    if-ne p1, v0, :cond_1

    iput v0, p0, Lcom/aps/a;->l:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/aps/a;->l:I

    iget v0, p0, Lcom/aps/a;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    iget v1, p0, Lcom/aps/a;->l:I

    iput v1, v0, Lcom/aps/e;->j:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, -0x1

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, " phnum=\"\""

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, " nettype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " nettype=\"UNKNOWN\""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, " inftype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "<macs><![CDATA[]]></macs>"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "<nb></nb>"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "<mmac><![CDATA[]]></mmac>"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, " gtype=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, " glong=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, " glat=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, " precision=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, " glong=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, " glat=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, " precision=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "<smac>null</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "<smac>00:00:00:00:00:00</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "<imei>000000000000000</imei>"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "<imsi>000000000000000</imsi>"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "<mcc>000</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "<mcc>0</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "<lac>0</lac>"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "<cellid>0</cellid>"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "<key></key>"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string/jumbo v0, "*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    const-string/jumbo v0, "*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Lcom/aps/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v4, "*"

    const-string/jumbo v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_2
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x1d

    if-le v3, v4, :cond_5

    :cond_6
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 2

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/aps/n;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/a;)Z
    .locals 4

    iget-wide v0, p0, Lcom/aps/a;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aps/a;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aps/a;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/aps/a;I)I
    .locals 0

    iput p1, p0, Lcom/aps/a;->l:I

    return p1
.end method

.method static synthetic b(Lcom/aps/a;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/aps/c;
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aps/a;->s:J

    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    new-instance v2, Lcom/aps/k;

    invoke-direct {v2}, Lcom/aps/k;-><init>()V

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v3

    iget-object v0, p0, Lcom/aps/a;->y:Lcom/aps/j;

    iget-object v5, p0, Lcom/aps/a;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/aps/a;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v5, v6}, Lcom/aps/j;->a(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v5

    iget-object v7, p0, Lcom/aps/a;->b:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "req cost "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, v5, v3

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/aps/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aps/a;->o:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/aps/j;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string/jumbo v4, "<saps>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v2, v0}, Lcom/aps/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/aps/a;->j:Lcom/aps/b;

    const-string/jumbo v4, "GBK"

    invoke-virtual {v3, v0, v4}, Lcom/aps/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/aps/k;->b(Ljava/lang/String;)Lcom/aps/c;

    move-result-object v0

    iget-object v2, p0, Lcom/aps/a;->B:Lcom/aps/s;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Lcom/aps/c;->j()Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "eab"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "e"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "d"

    const-string/jumbo v6, "ctl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "u"

    const-string/jumbo v6, "suc"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/aps/a;->B:Lcom/aps/s;

    iget-object v5, p0, Lcom/aps/a;->C:Lcom/aps/y;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/aps/s;->a(Lcom/aps/y;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string/jumbo v2, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/aps/a;->B:Lcom/aps/s;

    invoke-virtual {v2}, Lcom/aps/s;->c()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aps/a;->B:Lcom/aps/s;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aps/a;->G:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/aps/n;->a(Lcom/aps/c;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    aget-object v3, v3, v10

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v3, v11, [Ljava/lang/Object;

    const-string/jumbo v4, "api return pure"

    aput-object v4, v3, v10

    invoke-static {v3}, Lcom/aps/n;->a([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array v3, v11, [Ljava/lang/Object;

    const-string/jumbo v4, "aps return pure"

    aput-object v4, v3, v10

    invoke-static {v3}, Lcom/aps/n;->a([Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    :try_start_1
    const-string/jumbo v2, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aps/a;->B:Lcom/aps/s;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/aps/a;->d()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/aps/c;->j()Lorg/json/JSONObject;

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/aps/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aps/a;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/aps/a;)Landroid/telephony/CellLocation;
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->F:Landroid/telephony/CellLocation;

    return-object v0
.end method

.method static synthetic d(Lcom/aps/a;)I
    .locals 1

    iget v0, p0, Lcom/aps/a;->c:I

    return v0
.end method

.method static synthetic e(Lcom/aps/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/aps/a;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private f()Ljava/lang/StringBuilder;
    .locals 10

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/aps/a;->n()V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v0, p0, Lcom/aps/a;->c:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/aps/a;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/a;->A:Ljava/lang/String;

    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/a;->A:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/a;->A:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v3, v2

    move v4, v2

    :goto_1
    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v0, "nb"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v0, "access"

    move v4, v5

    :cond_3
    const-string/jumbo v8, "#%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :pswitch_0
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    const-string/jumbo v3, "#"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/aps/e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string/jumbo v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    return-object v6

    :cond_8
    invoke-direct {p0}, Lcom/aps/a;->i()V

    goto :goto_3

    :cond_9
    move-object v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized g()Ljava/lang/StringBuilder;
    .locals 17

    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    const-string/jumbo v8, "0"

    const-string/jumbo v9, "0"

    const-string/jumbo v10, "0"

    const-string/jumbo v11, "0"

    const-string/jumbo v2, ""

    const-string/jumbo v1, "888888888888888"

    sput-object v1, Lcom/aps/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "888888888888888"

    sput-object v1, Lcom/aps/f;->b:Ljava/lang/String;

    const-string/jumbo v1, ""

    sput-object v1, Lcom/aps/f;->c:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v3, ""

    const-string/jumbo v1, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/aps/a;->c:I

    const/4 v15, 0x2

    if-ne v6, v15, :cond_14

    const-string/jumbo v5, "1"

    move-object v6, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/aps/f;->a:Ljava/lang/String;

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/aps/f;->a:Ljava/lang/String;

    :cond_0
    :goto_1
    sget-object v5, Lcom/aps/f;->a:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string/jumbo v5, "888888888888888"

    sput-object v5, Lcom/aps/f;->a:Ljava/lang/String;

    :cond_1
    sget-object v5, Lcom/aps/f;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/aps/f;->b:Ljava/lang/String;

    const-string/jumbo v15, "888888888888888"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string/jumbo v5, "888888888888888"

    sput-object v5, Lcom/aps/f;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/aps/f;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    :try_start_2
    sget-object v5, Lcom/aps/f;->b:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string/jumbo v5, "888888888888888"

    sput-object v5, Lcom/aps/f;->b:Ljava/lang/String;

    :cond_4
    sget-object v5, Lcom/aps/f;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, ""

    sput-object v5, Lcom/aps/f;->c:Ljava/lang/String;

    :cond_5
    sget-object v5, Lcom/aps/f;->c:Ljava/lang/String;

    if-nez v5, :cond_6

    const-string/jumbo v5, ""

    sput-object v5, Lcom/aps/f;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aps/a;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    :goto_3
    :try_start_4
    invoke-static {v5}, Lcom/aps/j;->a(Landroid/net/NetworkInfo;)I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Lcom/aps/j;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->l()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v3}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "2"

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aps/a;->o:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/aps/j;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string/jumbo v16, "true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v2, 0x1

    aget-object v2, v5, v2

    :cond_8
    const-string/jumbo v5, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "GBK\"?>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<Cell_Req ver=\"3.0\"><HDR version=\"3.0\" cdma=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\" gtype=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\" glong=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\" glat=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\" precision=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\"><src>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "</src><license>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/aps/f;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "</license><key>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</key><clientid>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/aps/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</clientid><imei>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/aps/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</imei><imsi>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</imsi><smac>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aps/a;->A:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</smac></HDR><DRR phnum=\""

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/aps/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" nettype=\""

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" inftype=\""

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aps/a;->c:I

    packed-switch v2, :pswitch_data_0

    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_9
    move-object v3, v1

    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->l()Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "*"

    const-string/jumbo v4, "."

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_b
    sget-object v5, Lcom/aps/f;->a:Ljava/lang/String;

    const-string/jumbo v15, "888888888888888"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "888888888888888"

    sput-object v5, Lcom/aps/f;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/aps/f;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_1

    :cond_c
    :try_start_6
    const-string/jumbo v3, "1"

    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->l()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->i()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_d
    const/4 v5, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    goto/16 :goto_4

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aps/e;

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<mcc>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</mcc>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<mnc>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</mnc>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<lac>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/aps/e;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</lac>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<cellid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/aps/e;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</cellid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<signal>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/aps/e;->j:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</signal>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    move v3, v1

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_f

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aps/e;

    iget v5, v1, Lcom/aps/e;->c:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/aps/e;->d:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/aps/e;->j:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v3, v1, :cond_e

    const-string/jumbo v1, "*"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    :cond_f
    move-object v1, v2

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/a;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aps/e;

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<mcc>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</mcc>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<sid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/aps/e;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</sid>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<nid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/aps/e;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</nid>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<bid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/aps/e;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</bid>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/aps/e;->f:I

    if-lez v2, :cond_10

    iget v2, v1, Lcom/aps/e;->e:I

    if-lez v2, :cond_10

    const-string/jumbo v2, "<lon>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/aps/e;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</lon>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<lat>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/aps/e;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</lat>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string/jumbo v2, "<signal>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/aps/e;->j:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</signal>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->i()V

    :cond_12
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<nb>%s</nb>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "<macs><![CDATA[%s]]></macs>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const-string/jumbo v1, "<mmac><![CDATA[%s]]></mmac>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</DRR></Cell_Req>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/aps/a;->a(Ljava/lang/StringBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v7

    :cond_13
    :try_start_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<macs><![CDATA[%s]]></macs>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v15

    goto/16 :goto_3

    :catch_2
    move-exception v5

    goto/16 :goto_2

    :cond_14
    move-object v6, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic g(Lcom/aps/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized h()Ljava/lang/String;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/aps/a;->t:Z

    if-eqz v3, :cond_4

    move v3, v1

    :goto_0
    if-eqz v3, :cond_0

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aps/a;->w:J

    :cond_0
    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/aps/a;->j()V

    :cond_2
    invoke-direct {p0}, Lcom/aps/a;->g()Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aps/a;->C:Lcom/aps/y;

    iget-object v1, p0, Lcom/aps/a;->B:Lcom/aps/s;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/aps/a;->z:I

    if-ltz v1, :cond_3

    iget-boolean v1, p0, Lcom/aps/a;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/aps/a;->B:Lcom/aps/s;

    invoke-virtual {v1}, Lcom/aps/s;->d()Lcom/aps/y;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/a;->C:Lcom/aps/y;

    iget-object v1, p0, Lcom/aps/a;->C:Lcom/aps/y;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aps/a;->C:Lcom/aps/y;

    invoke-virtual {v1}, Lcom/aps/y;->a()[B

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xb

    const-string/jumbo v4, "<COR><inf>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/aps/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xb

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    const-string/jumbo v3, "</inf></COR>"

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/aps/a;->j:Lcom/aps/b;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v1, v2, v3}, Lcom/aps/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v3, "</src><sreq>"

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v3, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string/jumbo v3, "\"?><saps><src v=\"3.0\">"

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string/jumbo v3, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</sreq></saps>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_3
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_3
    iget-wide v3, p0, Lcom/aps/a;->w:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_5

    move v3, v1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/aps/a;->w:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/aps/f;->j:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    move v3, v1

    goto/16 :goto_0

    :cond_6
    iget-wide v3, p0, Lcom/aps/a;->x:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/aps/a;->x:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/aps/f;->i:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    move v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/aps/n;->a(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_7
    move v3, v2

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/aps/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/a;->i()V

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static synthetic i(Lcom/aps/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/a;->j()V

    return-void
.end method

.method static synthetic j(Lcom/aps/a;)I
    .locals 1

    iget v0, p0, Lcom/aps/a;->z:I

    return v0
.end method

.method private j()V
    .locals 2

    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->x:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private k()V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/aps/a;->q:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/h;

    invoke-virtual {v0}, Lcom/aps/h;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    iget-wide v7, v0, Lcom/aps/h;->b:D

    aput-wide v7, v6, v10

    const/4 v7, 0x1

    iget-wide v8, v0, Lcom/aps/h;->a:D

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/a;->q:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->b()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/a;->q:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->a()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/aps/n;->a([D)F

    move-result v6

    iget v7, v0, Lcom/aps/h;->c:F

    cmpl-float v7, v6, v7

    if-gez v7, :cond_3

    const-string/jumbo v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "fence"

    invoke-virtual {v0}, Lcom/aps/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/aps/a;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private m()Lcom/aps/c;
    .locals 2

    invoke-direct {p0}, Lcom/aps/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aps/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/a;->q:Lcom/aps/c;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->r:J

    iget-object v0, p0, Lcom/aps/a;->q:Lcom/aps/c;

    :goto_0
    return-object v0

    :cond_0
    iput-object v0, p0, Lcom/aps/a;->p:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0}, Lcom/aps/a;->b(Ljava/lang/String;)Lcom/aps/c;

    move-result-object v0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    const/16 v1, 0x9

    iget-boolean v0, p0, Lcom/aps/a;->t:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/aps/a;->c:I

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/aps/a;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/aps/a;->c:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/aps/a;->c:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "in debug mode, only for test"

    invoke-static {v0, v1}, Lcom/aps/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Lcom/aps/n;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aps/a;->e:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aps/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/aps/a;->m:Lcom/aps/a$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/aps/a;->j()V

    const-string/jumbo v0, "connectivity"

    iget-object v1, p0, Lcom/aps/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/aps/n;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/aps/a;->d:Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Lcom/aps/n;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->F:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->c:I

    :goto_1
    new-instance v0, Lcom/aps/a$1;

    invoke-direct {v0, p0}, Lcom/aps/a$1;-><init>(Lcom/aps/a;)V

    iput-object v0, p0, Lcom/aps/a;->k:Landroid/telephony/PhoneStateListener;

    const-string/jumbo v1, "android.telephony.PhoneStateListener"

    const/4 v0, 0x0

    invoke-static {}, Lcom/aps/n;->b()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    const-string/jumbo v2, "LISTEN_SIGNAL_STRENGTH"

    :try_start_0
    invoke-static {v1, v2}, Lcom/aps/l;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/a;->k:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->D:J

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/aps/a;->c:I

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/aps/a;->c:I

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/aps/n;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "LISTEN_SIGNAL_STRENGTHS"

    :try_start_1
    invoke-static {v1, v2}, Lcom/aps/l;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/aps/n;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/aps/a;->k:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/aps/n;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/aps/h;Landroid/app/PendingIntent;)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/aps/h;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/aps/f;->d:Ljava/lang/String;

    sget-object v1, Lcom/aps/f;->e:Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/aps/d;->a()Lcom/aps/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aps/d;->c()V

    :cond_2
    aget-object v1, v0, v3

    sput-object v1, Lcom/aps/f;->e:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/aps/f;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/a;->o:Lorg/json/JSONObject;

    return-void
.end method

.method public declared-synchronized b()Lcom/aps/c;
    .locals 12

    const/high16 v11, 0x41a0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    sget-object v0, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/aps/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->o:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/aps/j;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/aps/a;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aps/a;->z:I

    iget v0, p0, Lcom/aps/a;->z:I

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/aps/a;->d()V

    :cond_2
    iget v0, p0, Lcom/aps/a;->z:I

    if-ne v0, v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/aps/a;->E:J

    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/n;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aps/a;->t:Z

    :cond_3
    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    :cond_4
    iget v0, p0, Lcom/aps/a;->z:I

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v5, p0, Lcom/aps/a;->E:J

    iget-wide v7, p0, Lcom/aps/a;->D:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    const/4 v0, 0x4

    :goto_1
    if-lez v0, :cond_5

    iget-object v2, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    iget-wide v5, p0, Lcom/aps/a;->r:J

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v7

    sub-long v5, v7, v5

    const-wide/16 v9, 0x12c

    cmp-long v0, v5, v9

    if-gez v0, :cond_1d

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/aps/a;->q:Lcom/aps/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aps/a;->q:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->d()J

    move-result-wide v5

    sub-long v5, v7, v5

    :cond_6
    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    if-gtz v0, :cond_1d

    move v0, v3

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aps/a;->q:Lcom/aps/c;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->r:J

    iget-object v1, p0, Lcom/aps/a;->q:Lcom/aps/c;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/aps/a;->F:Landroid/telephony/CellLocation;

    if-nez v0, :cond_8

    iget-boolean v2, p0, Lcom/aps/a;->t:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/aps/a;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/aps/n;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/aps/a;->n()V

    const-string/jumbo v0, ""

    const-string/jumbo v2, "network"

    invoke-direct {p0}, Lcom/aps/a;->l()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/aps/a;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    :goto_4
    iget v5, p0, Lcom/aps/a;->c:I

    sparse-switch v5, :sswitch_data_0

    :cond_a
    move-object v2, v0

    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/aps/a;->f()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/aps/d;->a()Lcom/aps/d;

    move-result-object v0

    const-string/jumbo v5, "mem"

    invoke-virtual {v0, v2, v1, v5}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/aps/c;

    move-result-object v5

    if-nez v5, :cond_19

    invoke-direct {p0}, Lcom/aps/a;->m()Lcom/aps/c;

    move-result-object v0

    iget-object v5, p0, Lcom/aps/a;->q:Lcom/aps/c;

    if-eqz v0, :cond_b

    if-nez v5, :cond_18

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    iput-object v0, p0, Lcom/aps/a;->q:Lcom/aps/c;

    :cond_c
    :goto_7
    invoke-static {}, Lcom/aps/d;->a()Lcom/aps/d;

    move-result-object v0

    iget-object v3, p0, Lcom/aps/a;->q:Lcom/aps/c;

    iget-object v4, p0, Lcom/aps/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->r:J

    invoke-direct {p0}, Lcom/aps/a;->k()V

    iget-object v1, p0, Lcom/aps/a;->q:Lcom/aps/c;

    goto/16 :goto_0

    :pswitch_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_9

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/telephony/CellLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    if-eqz v0, :cond_9

    :try_start_2
    iget-object v2, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/aps/n;->b()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_9

    :try_start_3
    const-string/jumbo v2, "getSystemId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_d

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/n;->a([Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v2, "getNetworkId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/n;->a([Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v2, "getBaseStationId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_f

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/n;->a([Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x2

    iput v2, p0, Lcom/aps/a;->c:I

    iget-object v2, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/n;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/aps/e;

    invoke-direct {v5}, Lcom/aps/e;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    iput-object v2, v5, Lcom/aps/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "getSystemId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v5, Lcom/aps/e;->g:I

    const-string/jumbo v2, "getNetworkId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v5, Lcom/aps/e;->h:I

    const-string/jumbo v2, "getBaseStationId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v5, Lcom/aps/e;->i:I

    iget v2, p0, Lcom/aps/a;->l:I

    iput v2, v5, Lcom/aps/e;->j:I

    const-string/jumbo v2, "getBaseStationLatitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v5, Lcom/aps/e;->e:I

    const-string/jumbo v2, "getBaseStationLongitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/aps/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v5, Lcom/aps/e;->f:I

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :cond_10
    :try_start_4
    invoke-direct {p0}, Lcom/aps/a;->i()V

    goto/16 :goto_4

    :sswitch_0
    iget-object v5, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const-string/jumbo v0, "cellwifi"

    :goto_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v0, "cell"

    goto :goto_8

    :sswitch_1
    iget-object v5, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/aps/e;->i:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    const-string/jumbo v0, "cellwifi"

    :goto_9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_5

    :cond_14
    const-string/jumbo v0, "cell"

    goto :goto_9

    :sswitch_2
    const-string/jumbo v0, "#%s#"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_15

    iget-object v0, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_15

    move-object v2, v1

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    move-object v2, v1

    goto/16 :goto_5

    :cond_16
    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_17

    iget-object v0, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/aps/a;->h:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1c

    iget-object v5, p0, Lcom/aps/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v0, v1

    :goto_a
    move-object v2, v0

    goto/16 :goto_5

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_5

    :cond_18
    const/4 v6, 0x4

    new-array v6, v6, [D

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/aps/c;->b()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/aps/c;->a()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v5}, Lcom/aps/c;->b()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v5}, Lcom/aps/c;->a()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/aps/n;->a([D)F

    move-result v6

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_b

    invoke-virtual {v0}, Lcom/aps/c;->c()F

    move-result v6

    invoke-virtual {v5}, Lcom/aps/c;->c()F

    move-result v5

    sub-float v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_b

    move v3, v4

    goto/16 :goto_6

    :cond_19
    iget-wide v6, p0, Lcom/aps/a;->r:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/aps/a;->s:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x493e0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1a

    move v0, v3

    :goto_b
    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/aps/a;->m()Lcom/aps/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->q:Lcom/aps/c;

    goto/16 :goto_7

    :cond_1a
    move v0, v4

    goto :goto_b

    :cond_1b
    iput-object v5, p0, Lcom/aps/a;->q:Lcom/aps/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    :cond_1c
    move-object v0, v2

    goto :goto_a

    :cond_1d
    move v0, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public c()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->B:Lcom/aps/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->B:Lcom/aps/s;

    invoke-virtual {v0}, Lcom/aps/s;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/a;->G:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/aps/a;->C:Lcom/aps/y;

    :try_start_1
    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/a;->m:Lcom/aps/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    iput-object v3, p0, Lcom/aps/a;->m:Lcom/aps/a$a;

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/a;->k:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/a;->k:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/aps/d;->a()Lcom/aps/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/d;->c()V

    sput-boolean v4, Lcom/aps/f;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/a;->r:J

    iget-object v0, p0, Lcom/aps/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/aps/a;->l:I

    invoke-direct {p0}, Lcom/aps/a;->i()V

    iput-object v3, p0, Lcom/aps/a;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/aps/a;->q:Lcom/aps/c;

    iput-object v3, p0, Lcom/aps/a;->b:Landroid/content/Context;

    iput-object v3, p0, Lcom/aps/a;->f:Landroid/telephony/TelephonyManager;

    sput-object v3, Lcom/aps/a;->a:Lcom/aps/a;

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/aps/a;->m:Lcom/aps/a$a;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/aps/a;->m:Lcom/aps/a$a;

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/aps/n;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->B:Lcom/aps/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/s;->a(Landroid/content/Context;)Lcom/aps/s;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->B:Lcom/aps/s;

    iget-object v0, p0, Lcom/aps/a;->B:Lcom/aps/s;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/aps/s;->a(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/aps/a;->G:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/a;->G:Z

    iget-object v0, p0, Lcom/aps/a;->B:Lcom/aps/s;

    invoke-virtual {v0}, Lcom/aps/s;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
