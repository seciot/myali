.class public Lcom/alipay/mobile/common/info/DeviceInfo;
.super Ljava/lang/Object;


# static fields
.field public static final ANY_ZERO_STR:Ljava/lang/String; = "[0]+"

.field public static final CLIENT_KEY_MAX_LENGTH:I = 0xa

.field public static final CMCC:Ljava/lang/String; = "cmcc"

.field public static final CTCC:Ljava/lang/String; = "ctcc"

.field public static final CUCC:Ljava/lang/String; = "cucc"

.field public static final HARDWARD_INVALID_LEN:I = 0x5

.field public static final IMEI_LEN:I = 0xf

.field public static final NULL:Ljava/lang/String; = "null"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static a:Lcom/alipay/mobile/common/info/DeviceInfo;

.field private static t:Z


# instance fields
.field private b:Landroid/content/Context;

.field public baseString:[Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Ljava/lang/Object;

.field private u:Ljava/text/SimpleDateFormat;

.field private v:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/info/DeviceInfo;->t:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->baseString:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->s:Ljava/lang/Object;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->u:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->baseString:[Ljava/lang/String;

    array-length v3, v0

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->baseString:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/info/DeviceInfo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "[0]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/info/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/info/DeviceInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->s:Ljava/lang/Object;

    return-object v0
.end method

.method private static b()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const-string/jumbo v5, "get"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ro.secure"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-eqz v2, :cond_0

    const-string/jumbo v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0xf

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "origin imei:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->i:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "origin imsi:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->j:Ljava/lang/String;

    const-string/jumbo v0, "clientId"

    const-string/jumbo v4, ""

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saved clientid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "client id is valid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "client id is valid:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "normarlize, imsi:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",imei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",newClientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "clientId"

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "client is is not valid, imei:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",imsi:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "normalize, imei:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",imsi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",newClientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "clientId"

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :cond_5
    move-object v2, v4

    goto/16 :goto_1

    :cond_6
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;
    .locals 5

    const-class v1, Lcom/alipay/mobile/common/info/DeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/info/DeviceInfo;->a:Lcom/alipay/mobile/common/info/DeviceInfo;

    if-nez v0, :cond_0

    new-instance v2, Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/info/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/alipay/mobile/common/info/DeviceInfo;->a:Lcom/alipay/mobile/common/info/DeviceInfo;

    iget-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->c:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->d:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->e:I

    invoke-direct {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    invoke-direct {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->g:Ljava/lang/String;

    invoke-direct {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->h:Ljava/lang/String;

    iget-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v0, "clientKey"

    const-string/jumbo v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    iput-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/mobile/common/info/DeviceInfo$1;

    invoke-direct {v3, v2}, Lcom/alipay/mobile/common/info/DeviceInfo$1;-><init>(Lcom/alipay/mobile/common/info/DeviceInfo;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->k:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->m:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->n:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->b()Z

    move-result v0

    iput-boolean v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->o:Z

    iget-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v2, Lcom/alipay/mobile/common/info/DeviceInfo;->v:Landroid/net/wifi/WifiManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/info/DeviceInfo;->a:Lcom/alipay/mobile/common/info/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "clientKey"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "123456789012345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x30

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_6

    aget-byte v2, v3, v0

    if-lt v2, v5, :cond_1

    const/16 v4, 0x39

    if-le v2, v4, :cond_3

    :cond_1
    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    const/16 v4, 0x7a

    if-le v2, v4, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-lt v2, v4, :cond_5

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    aput-byte v5, v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;
    .locals 3

    const-class v1, Lcom/alipay/mobile/common/info/DeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/info/DeviceInfo;->a:Lcom/alipay/mobile/common/info/DeviceInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "DeviceManager must be create by call createInstance(Context context)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/common/info/DeviceInfo;->a:Lcom/alipay/mobile/common/info/DeviceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getSecurityInstance()V
    .locals 3

    const-class v1, Lcom/alipay/mobile/common/info/DeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/info/DeviceInfo;->t:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/info/DeviceInfo;->a:Lcom/alipay/mobile/common/info/DeviceInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/info/DeviceInfo;->a:Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    invoke-direct {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->g:Ljava/lang/String;

    invoke-direct {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->h:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/info/DeviceInfo;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAccessPoint()Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, "wifi"

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    const-string/jumbo v1, "internet"

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getCellInfo()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "-1;-1"

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v3, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v3, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDefImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getDefImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDencity()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->e:I

    return v0
.end method

.method public getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fail to creat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dir exist,but not directory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fail to creat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dir exist,but not directory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->v:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string/jumbo v0, "cmcc"

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->l:Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->l:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "cucc"

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->l:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ctcc"

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->l:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->l:Ljava/lang/String;

    goto :goto_1
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->v:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->d:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->c:I

    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->u:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmClientKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getmDid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->p:Ljava/lang/String;

    goto :goto_1
.end method

.method public getmMobileBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getmMobileModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getmScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->d:I

    return v0
.end method

.method public getmScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->c:I

    return v0
.end method

.method public getmSystemVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public installApk(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public ismRooted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->o:Z

    return v0
.end method

.method public refleshClientKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "clientKey"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->q:Ljava/lang/String;

    return-object v1
.end method

.method public setDefImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setDefImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setmDid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->p:Ljava/lang/String;

    return-void
.end method
